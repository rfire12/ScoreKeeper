module Main exposing (main)

import Html exposing (..)
import Models exposing (..)
import Msgs exposing (..)
import Update exposing (..)
import View exposing (..)


main : Program Never Model Msg
main =
    beginnerProgram
        { model = initialModel
        , update = update
        , view = view
        }
