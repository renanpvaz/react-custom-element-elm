module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Json.Decode as Decode exposing (..)


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }



-- MODEL


type alias Model =
    { latitude : Float
    , longitude : Float
    }


init : ( Model, Cmd msg )
init =
    ( { latitude = 48.2082, longitude = 16.3738 }, Cmd.none )



-- UPDATE


type Msg
    = DomNoOp
    | ClickedOnReactButton


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    ( model, Cmd.none )


view : Model -> Html Msg
view model =
    div [ class "container" ]
        [ h1 []
            [ text "React component"
            , code [ style [ ( "color", "purple" ) ] ] [ text " → " ]
            , text "Custom elment"
            , code [ style [ ( "color", "purple" ) ] ] [ text " → " ]
            , text "Elm view"
            ]
        , section
            [ class "content" ]
            [ h2 [] [ text "Leaflet map" ]
            , Html.node "leaflet-map"
                [ attribute "center" "51.505,-0.09" ]
                []
            , h2 [] [ text "A custom button" ]
            , Html.node "react-button"
                [ onClick ClickedOnReactButton, attribute "label" "yeah boii" ]
                []
            ]
        ]
