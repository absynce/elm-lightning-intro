module Main exposing (..)

import Css
import Css.Elements
import Html exposing (..)
import Html.Attributes exposing (..)
import Slides exposing (slidesDefaultOptions)
import Slides.Styles


main : Program Never Slides.Model Slides.Msg
main =
    Slides.app
        { slidesDefaultOptions
            | style =
                [ Css.Elements.img
                    [ Css.width Css.auto
                    ]
                ]
                    |> List.append
                        (Slides.Styles.elmMinimalist
                            (Css.rgb 255 255 255)
                            (Css.rgb 230 230 230)
                            (Css.px 30)
                            (Css.hex "60B5CC")
                        )
        }
        [ titleSlide
        , myHistorySlide
        , whyElm
        , whyElmIsReliable
        , howElmIsReliableExample1
        ]


titleSlide : Slides.Slide
titleSlide =
    Slides.html <|
        div [ class "title-slide" ]
            [ img
                [ alt "Elm Logo"
                , src "images/Elm_logo.png"
                ]
                []
            , h1 [] [ text "Elm Enlightening Eville" ]
            , h2 [] [ text "Reliable Web Development" ]
            , div []
                [ em [] [ text "by Jared M. Smith" ]
                ]
            ]


myHistorySlide : Slides.Slide
myHistorySlide =
    Slides.mdFragments
        [ "# My history"
        , "* Java -> C# -> JavaScript -> Elm"
        , """* JavaScript = My first 💖
  * Do (allthethings)
  * Quick feedback loop"""
        , "* Working alone"
        , "* Working on a team" -- Goes back to idea of reliability
        , "* Healthcare reliability"
        ]


whyElm : Slides.Slide
whyElm =
    Slides.html <|
        div
            [ class "why-elm"
            ]
            [ h1 [] [ text "Why Elm?" ]
            , img
                [ alt "JS fatigue vs. Elm"
                , src "images/js-fatigue-vs-elm.jpg"
                ]
                []
            , div []
                [ em []
                    [ text "from "
                    , a
                        [ href "https://github.com/dwyl/learn-elm/" ]
                        [ text "github.com/dwyl/learn-elm" ]
                    ]
                ]
            ]


whyElmIsReliable : Slides.Slide
whyElmIsReliable =
    Slides.mdFragments
        [ "# Elm is reliable"
        , "\"No runtime exceptions in practice\""
        , """<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">After 2 years and 200,000 lines of production <a href="https://twitter.com/elmlang?ref_src=twsrc%5Etfw">@elmlang</a> code, we got our first production runtime exception.
          <br/><br/>[...]
          </p>&mdash; Richard Feldman (@rtfeldman) <a href="https://twitter.com/rtfeldman/status/961051166783213570?ref_src=twsrc%5Etfw">February 7, 2018</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
"""
        ]


howElmIsReliableExample1 : Slides.Slide
howElmIsReliableExample1 =
    Slides.mdFragments
        [ "# No `null` or `undefined`"
        , """
```elm
-- A person, but maybe we do not know their age.
type alias Person =
    { name : String
    , age : Maybe Int
    }

tom = { name = "Tom", age = Just 42 }
sue = { name = "Sue", age = Nothing }
```
        """
        ]
