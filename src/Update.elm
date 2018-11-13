module Update exposing (update)

import Models exposing (Model)
import Msgs exposing (Msg(..))


update : Msg -> Model -> Model
update msg model =
    case msg of
        Add ->
            { model | calories = model.calories + model.input }

        Input val ->
            case String.toInt val of
                Ok input ->
                    { model | input = input }

                Err err ->
                    { model | input = 0 }

        Clear ->
            { model | calories = 0 }
