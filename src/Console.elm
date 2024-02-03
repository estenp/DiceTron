module Console exposing (update)

-- import Main exposing (NoOp)

import Browser.Dom as Dom
import Task
import Try


update model consoleInput =
    -- validate command
    -- add to history log
    let
        modelWithNewEntry entry =
            { model | consoleHistory = model.consoleHistory ++ entry, consoleValue = "" }

        focusCmd =
            Task.attempt (\_ -> NoOp) (Dom.focus "console")

        _ =
            Debug.log "console log" model
    in
    case String.words command of
        x :: xs ->
            case x of
                "/c" ->
                    ( modelWithNewEntry [ "[chat] " ++ String.dropLeft 2 command ], focusCmd )

                -- todo: create cleaner function for batching in a focus command - mapSecond isn't very intuitive
                "roll" ->
                    Tuple.mapSecond (\cmd -> Cmd.batch [ cmd, focusCmd ]) (update (GameAction (Roll ReRoll)) (modelWithNewEntry [ command ]))

                "look" ->
                    Tuple.mapSecond (\cmd -> Cmd.batch [ cmd, focusCmd ]) (update (GameAction Look) (modelWithNewEntry [ command ]))

                "pull" ->
                    Tuple.mapSecond (\cmd -> Cmd.batch [ cmd, focusCmd ]) (update (GameAction Pull) (modelWithNewEntry [ command ]))

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
                            Tuple.mapSecond
                                (\cmd -> Cmd.batch [ cmd, focusCmd ])
                                (update (GameAction (Pass try)) (modelWithNewEntry [ command ]))

                        Err message ->
                            ( modelWithNewEntry [ command, message ], focusCmd )

                "try" ->
                    ( modelWithNewEntry
                        [ command
                        , "You received: " ++ Try.toString model.tryToBeat
                        , "You must pass: "
                            ++ (case Try.mustPass model.tryToBeat of
                                    Just t ->
                                        Try.toString t

                                    Nothing ->
                                        "You cannot beat this roll. Sorry."
                               )
                        ]
                    , focusCmd
                    )

                "clear" ->
                    ( { model | consoleHistory = [], consoleValue = "" }, focusCmd )

                "help" ->
                    ( modelWithNewEntry
                        [ command
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
                    , focusCmd
                    )

                "" ->
                    ( modelWithNewEntry [ "" ], focusCmd )

                _ ->
                    ( modelWithNewEntry [ command, "Command not recognized." ], focusCmd )

        _ ->
            ( model, Cmd.none )
