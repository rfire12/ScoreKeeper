module Update exposing (update)

import Models exposing (Model)
import Msgs exposing (Msg(..))


update : Msg -> Model -> Model
update msg model =
    case msg of 
        Input name -> {model | name = name}

        Cancel -> {model | name = "", playerId = Nothing}

        Save -> savePlayer model

savePlayer: model =
    if model.name == "" then
        