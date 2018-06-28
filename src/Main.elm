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


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    ( model, Cmd.none )


view : Model -> Html Msg
view model =
    Html.node "leaflet-map" [] []
