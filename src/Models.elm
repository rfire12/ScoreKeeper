module Models exposing (Model, initialModel)


type alias Model =
    { calories : Int
    , input : Int
    }


initialModel : Model
initialModel =
    { calories = 0
    , input = 0
    }
