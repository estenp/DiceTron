module Console exposing (Model, Msg(..), update, view)

import Css
import Game
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (class, css, id, type_, value)
import Html.Styled.Events exposing (..)
import Json.Decode as Decode
import Tailwind.Theme as Tw exposing (..)
import Tailwind.Utilities as Tw
import Try


type Msg
    = Change String
    | VisibilityToggled
    | Submit String


type alias Model =
    { consoleHistory : List String
    , consoleValue : String
    , consoleIsVisible : Bool
    }


update : Msg -> ( Model, Game.Model ) -> ( Model, ( Game.Model, Cmd Game.Msg ) )
update msg ( console, game ) =
    case msg of
        Change str ->
            ( { console | consoleValue = str }, ( game, Cmd.none ) )

        VisibilityToggled ->
            ( { console | consoleIsVisible = not console.consoleIsVisible }, ( game, Cmd.none ) )

        Submit consoleInput ->
            -- validate command
            -- add to history log
            let
                -- for command case
                -- * add a console to the log
                -- * update game state
                addConsoleEntries : List String -> Model
                addConsoleEntries entries =
                    { console | consoleHistory = console.consoleHistory ++ entries, consoleValue = "" }

                --
                -- |> mergeConsoleState model
                -- newConsole = mergeConsoleState model ({ c | consoleHistory = model.consoleHistory ++ entry, consoleValue = "" })
                --
            in
            case String.words consoleInput of
                x :: xs ->
                    case x of
                        "/c" ->
                            ( addConsoleEntries [ "[chat] " ++ String.dropLeft 2 consoleInput ]
                            , ( game, Cmd.none )
                            )

                        "roll" ->
                            ( addConsoleEntries [ x ]
                            , Game.roll Game.ReRoll game
                            )

                        "look" ->
                            ( addConsoleEntries [ x ]
                            , ( Game.look game, Cmd.none )
                            )

                        "pull" ->
                            ( addConsoleEntries [ x ]
                            , ( Game.pull game, Cmd.none )
                            )

                        -- todo: apply this new util below
                        "pass" ->
                            let
                                parsedTry : Result String Try.Try
                                parsedTry =
                                    case List.filterMap String.toInt xs of
                                        a :: b :: _ ->
                                            Try.encode ( a, b )
                                                |> Debug.log "tryasdfsdaf"
                                                |> Result.fromMaybe "`pass` command requires two arguments: first, the Quantity of the Try, and second, the Value of the Try."

                                        [ _ ] ->
                                            Err "`pass` command requires two arguments: first, the Quantity of the Try, and second, the Value of the Try."

                                        [] ->
                                            Err "`pass` command requires two arguments: first, the Quantity of the Try, and second, the Value of the Try."

                                -- _ =
                                --     Debug.todo "try not validated properly. handle in Game.pass"
                            in
                            case parsedTry of
                                Ok try ->
                                    case Game.pass game try of
                                        Ok gameModel ->
                                            ( addConsoleEntries [ x ++ " " ++ Try.toString try ]
                                            , ( gameModel, Cmd.none )
                                            )

                                        Err e ->
                                            ( addConsoleEntries [ consoleInput, e ]
                                            , ( game, Cmd.none )
                                            )

                                Err message ->
                                    ( addConsoleEntries [ consoleInput, message ]
                                    , ( game, Cmd.none )
                                    )

                        "try" ->
                            ( addConsoleEntries
                                [ consoleInput
                                , "You received: " ++ Try.toString game.tryToBeat
                                , "You must pass: "
                                    ++ (case Try.mustPass game.tryToBeat of
                                            Just t ->
                                                Try.toString t

                                            Nothing ->
                                                "You cannot beat this roll. Sorry."
                                       )
                                ]
                            , ( game, Cmd.none )
                            )

                        "help" ->
                            ( addConsoleEntries
                                [ consoleInput
                                , """This console can be used to control your game via commands or chat with other players.

                                        `roll` -> trigger a roll or reroll
                                        `look` -> look at a passed roll
                                        `pull` -> pull a passed roll
                                        `pass` -> pass a roll
                                        `clear` -> clear the console
                                        `try` -> print the current try to beat, passed by the previous player

                                        Prefixing your message with a tag enables special actions.

                                        `/c *your message*` -> add a message to game chat
                                        """
                                ]
                            , ( game, Cmd.none )
                            )

                        "clear" ->
                            ( { console | consoleHistory = [], consoleValue = "" }, ( game, Cmd.none ) )

                        "" ->
                            ( addConsoleEntries [ "" ], ( game, Cmd.none ) )

                        _ ->
                            ( addConsoleEntries [ consoleInput, "Command not recognized." ], ( game, Cmd.none ) )

                _ ->
                    ( console, ( game, Cmd.none ) )


type alias Messages message =
    { onEnter : String -> message
    , onInput : String -> message
    }



-- type ViewHtmlMsg
--     = OnEnterMsg
--     | Msg


view : Model -> Messages a -> Html a
view model messages =
    let
        history =
            model.consoleHistory
                |> List.map
                    (\log ->
                        div []
                            -- todo: this needs to be a component with below?
                            [ span [ css [ Tw.flex, Tw.gap_4, Tw.items_start ] ] [ text ">", div [ css [ Tw.whitespace_pre_line ] ] [ text log ] ] ]
                    )
    in
    label
        [ class "console"
        , css
            [ Tw.flex
            , Tw.gap_1
            , Tw.flex_col
            , Tw.overflow_auto
            , Tw.p_4
            , Tw.bg_color Tw.black_200
            , Tw.border_t_4
            , Tw.border_color Tw.purple_100
            , Tw.w_full
            ]
        ]
        (history
            ++ [ span [ css [ Tw.flex, Tw.gap_4, Tw.items_start ] ]
                    -- todo: ^^ here
                    [ text ">"
                    , input
                        [ type_ "text"
                        , id "console"
                        , onInput messages.onInput
                        , onEnter (messages.onEnter model.consoleValue)
                        , value model.consoleValue
                        , css
                            [ Tw.inline_block
                            , Tw.w_full
                            , Css.backgroundColor Css.transparent
                            ]
                        ]
                        []
                    ]
               ]
        )



-- onEnter : Msg -> Attribute Msg


onEnter msg =
    let
        isEnter code =
            if code == 13 then
                Decode.succeed msg

            else
                Decode.fail "not ENTER"
    in
    on "keydown" (Decode.andThen isEnter keyCode)



-- handleConsoleToggle : Msg -> Attribute Msg
-- handleConsoleToggle msg =
--     let
--         isShortcut code =
--             if code == 13 then
--                 -- todo: replace with some sort of validator on `CMD + J`
--                 Decode.succeed msg
--             else
--                 Decode.fail "not ENTER"
--     in
--     on "keydown" (Decode.andThen isShortcut keyCode)
