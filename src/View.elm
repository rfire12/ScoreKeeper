module View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Models exposing (..)
import Msgs exposing (..)


view : Model -> Html Msg
view model =
    div [ class "container" ]
        [ h1 [] [ text "Score Keeper" ]
        , playerSection model
        ]


playerSection model =
    div [ class "playerSection" ]
        [ playerSectionHeader
        , playersList model
        , addPlayer model
        ]


playerSectionHeader : Html msg
playerSectionHeader =
    div [ class "playerSectionHeader" ]
        [ span [] [ text "Name" ]
        , span [] [ text "Points" ]
        ]


playersList model =
    ul [] (List.map renderPlayers model.players)


renderPlayers : Player -> Html msg
renderPlayers player =
    li [ class "player" ]
        [ span [ class "edit-icon" ] [ text "&#9998;" ]
        , span [] [ text player.name ]
        , button [] [ text "2pt" ]
        , button [] [ text "3pt" ]
        , span [] [ text <| toString <| player.points ]
        ]

addPlayer: Model -> Html msg
addPlayer model = 
    Html.form [][
        input [type_ "text", placeholder "Anadir/Editar jugador", value model.name] [],
        button [type_ "submit"][text "Guardar"],
        button [type_ "button"][text "Cancelar"]
    ]