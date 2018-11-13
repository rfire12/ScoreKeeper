module Msgs exposing (Msg(..))
import Models exposing (..)

type Msg
    = Edit Player
    | Score Player Int
    | Input String
    | Save
    | Cancel
    | DeletePlay Play
