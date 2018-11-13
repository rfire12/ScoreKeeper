module Main exposing (..)

import Html exposing (..)
import Msgs exposing (..)
import Models exposing (..)
import Update exposing (..)
import View exposing (..)


main : Program Never Model Msg
main =
    beginnerProgram
        { model = initialModel
        , update = update
        , view = view
        }
