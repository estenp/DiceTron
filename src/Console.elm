module Console exposing (Msg(..), update, view)

import Action
import Browser.Dom as Dom
import Css
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (class, css, for, id, type_, value)
import Html.Styled.Events exposing (..)
import Json.Decode as Decode
import Model exposing (Model, NoOp(..))
import Tailwind.Theme as Tw exposing (..)
import Tailwind.Utilities as Tw
import Task
import Try


type Msg
    = Change String
    | VisibilityToggled
    | Submit String


update : Msg -> Model -> ( Model, Cmd Action.Msg )
update msg model =
    case msg of
        Change str ->
            ( { model | consoleValue = str }
            , Cmd.none
            )

        VisibilityToggled ->
            ( { model | consoleIsVisible = not model.consoleIsVisible }
            , Cmd.none
            )

        Submit consoleInput ->
            -- validate command
            -- add to history log
            let
                modelWithNewEntry entry =
                    { model | consoleHistory = model.consoleHistory ++ entry, consoleValue = "" }

                -- Cmd.none =
                --     Task.attempt (\_ -> NoOp) (Dom.focus "console")
                -- appendCmd.none cmd =
                --     update cmd (modelWithNewEntry [ consoleInput ])
                --         |> Tuple.mapSecond (\c -> Cmd.batch [ c, Cmd.none ])
                -- Debug.log "console log" model
            in
            case String.words consoleInput of
                x :: xs ->
                    case x of
                        "/c" ->
                            ( modelWithNewEntry [ "[chat] " ++ String.dropLeft 2 consoleInput ], Cmd.none )

                        -- todo: create cleaner function for batching in a focus command - mapSecond isn't very intuitive
                        "roll" ->
                            Action.roll Action.ReRoll model

                        "look" ->
                            ( Action.look model, Cmd.none )

                        "pull" ->
                            ( Action.pull model, Cmd.none )

                        "pass" ->
                            let
                                parsedTry =
                                    case List.filterMap String.toInt xs of
                                        a :: b :: _ ->
                                            Try.encode ( a, b ) |> Result.fromMaybe "`pass` command requires two arguments: first, the Quantity of the Try, and second, the Value of the Try."

                                        [ _ ] ->
                                            Err "`pass` command requires two arguments: first, the Quantity of the Try, and second, the Value of the Try."

                                        [] ->
                                            Err "`pass` command requires two arguments: first, the Quantity of the Try, and second, the Value of the Try."

                                -- _ =
                                --     parsedTry |> Debug.todo "A default somewhere is causing a pull when passed a bad Try"
                            in
                            case parsedTry of
                                Ok try ->
                                    ( Action.pass model try, Cmd.none )

                                Err message ->
                                    ( modelWithNewEntry [ consoleInput, message ], Cmd.none )

                        "try" ->
                            ( modelWithNewEntry
                                [ consoleInput
                                , "You received: " ++ Try.toString model.tryToBeat
                                , "You must pass: "
                                    ++ (case Try.mustPass model.tryToBeat of
                                            Just t ->
                                                Try.toString t

                                            Nothing ->
                                                "You cannot beat this roll. Sorry."
                                       )
                                ]
                            , Cmd.none
                            )

                        "clear" ->
                            ( { model | consoleHistory = [], consoleValue = "" }, Cmd.none )

                        "help" ->
                            ( modelWithNewEntry
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
                            , Cmd.none
                            )

                        "" ->
                            ( modelWithNewEntry [ "" ], Cmd.none )

                        _ ->
                            ( modelWithNewEntry [ consoleInput, "Command not recognized." ], Cmd.none )

                _ ->
                    ( model, Cmd.none )


view : Model -> Html Msg
view model =
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
                        , onInput Change
                        , onEnter (Submit model.consoleValue)
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


onEnter : Msg -> Attribute Msg
onEnter msg =
    let
        isEnter code =
            if code == 13 then
                Decode.succeed msg

            else
                Decode.fail "not ENTER"
    in
    on "keydown" (Decode.andThen isEnter keyCode)
