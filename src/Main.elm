module Main exposing (main)

import Box exposing (..)
import Picture exposing (..)
import Gather exposing (gatherBoxes)
import Recursion exposing (sideBoxes, cornerBoxes)
import Letter exposing (..)
import Figure exposing (..)
import Fishy exposing (fishShapes)
import Triangular exposing (..)
import Fitting exposing (createPicture)
import Html exposing (Html)
import Decor exposing (render)

main : Html msg
main = 
  let 
    box = { a = { dx = 100.0, dy = 100.0 }
          , b = { dx = 300.0, dy = 0.0 }
          , c = { dx = 0.0, dy = 300.0 } }
    f = createPicture fLetter
    c = createPicture circleShapes
    cy = createPicture (circleyShapes 2 1.0)
    fw = createPicture (floweryShapes 5)
    bm = createPicture (boomerangShapes 2)
    es = createPicture eyeShapes
    fish = createPicture fishShapes
    bs = createPicture birdShapes
    n = 4
  in     
    box |> bs
        |> render [ box ]