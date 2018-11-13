module Models exposing (..)


type alias Model =
    { 
        players: List Player,
        plays: List Play,
        name: String, 
        playerId: Maybe Int
    }

type alias Player =
    {
        id: Int,
        name: String,
        points: Int
    }

type alias Play =
    {
        id: Int,
        player: Player,
        points: Int
    }

initialModel : Model
initialModel =
    { 
        players = [],
        plays = [],
        name = "",
        playerId = Nothing
    }
