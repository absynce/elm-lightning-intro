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
                            (Css.hex "323642")
                        )
        }
        [ titleSlide
        , myHistorySlide
        , pollAudience
        , whyElm
        , elmIsReliable
        , howElmIsReliableExample1CompilerError
        , howElmIsReliableExample2Maybe
        , elmReducesJavaScriptFatigue
        , howElmReducesJavaScriptFatigue
        , whatNext
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
            , h2 [ class "sub-title" ] [ text "Reliable Web Development" ]
            , div []
                [ em [] [ text "by Jared M. Smith" ]
                ]
            ]


myHistorySlide : Slides.Slide
myHistorySlide =
    Slides.mdFragments
        [ "# My history"
        , "* \\> 10 years development experience"
        , "* Java -> C# -> JavaScript -> Elm"
        , """* JavaScript = My first 💖
  * Do (allthethings)
  * Quick feedback loop"""
        , "* Working alone"
        , "* Working on a team" -- Goes back to idea of reliability
        , "* Healthcare reliability"
        ]


pollAudience : Slides.Slide
pollAudience =
    Slides.html <|
        div
            [ class "poll-audience"
            ]
            [ h1 [] [ text "Poll" ]
            , img
                [ alt "Show of hands"
                , src "images/poll.jpg"
                ]
                []
            , div []
                [ em []
                    [ text "image from "
                    , a
                        [ href "http://www.slate.com/articles/news_and_politics/politics/2016/05/how_to_read_a_poll.html" ]
                        [ text "slate.com" ]
                    ]
                ]
            ]


whyElm : Slides.Slide
whyElm =
    Slides.html <|
        div
            [ class "why-elm"
            ]
            [ h1 [] [ text "Why Elm?" ]
            , img
                [ alt "PLZ not another JS framework"
                , src "images/not-another-js-framework.jpg"
                ]
                []
            ]


elmIsReliable : Slides.Slide
elmIsReliable =
    Slides.htmlFragments
        [ h1
            [ class "elm-is-reliable" ]
            [ text "Elm is reliable" ]
        , blockquote
            [ class "elm-is-reliable" ]
            [ text "\"No runtime exceptions in practice\"" ]
        , img
            [ alt "Elm runtime exception tweet"
            , class "runtime-exception-tweet"
            , src "images/elm-runtime-exception-tweet.gif"
            ]
            []

        --         , """<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">After 2 years and 200,000 lines of production <a href="https://twitter.com/elmlang?ref_src=twsrc%5Etfw">@elmlang</a> code, we got our first production runtime exception.
        --           <br/><br/>[...]
        --           </p>&mdash; Richard Feldman (@rtfeldman) <a href="https://twitter.com/rtfeldman/status/961051166783213570?ref_src=twsrc%5Etfw">February 7, 2018</a></blockquote>
        -- <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
        -- """
        ]


howElmIsReliableExample1CompilerError : Slides.Slide
howElmIsReliableExample1CompilerError =
    Slides.html <|
        div
            [ class "elm-compiler-error"
            ]
            [ h1 [] [ text "The Elm compiler has your back" ]
            , img
                [ alt "Elm compiler error - name misspelled"
                , src "images/elm-compiler-error.png"
                ]
                []
            ]


howElmIsReliableExample2Maybe : Slides.Slide
howElmIsReliableExample2Maybe =
    Slides.htmlFragments
        [ h1 [] [ text "No null or undefined" ]
        , img
            [ alt "Maybe example"
            , class "maybe-example"
            , src "images/maybe-code.png"
            ]
            []
        ]


elmReducesJavaScriptFatigue : Slides.Slide
elmReducesJavaScriptFatigue =
    Slides.html <|
        div
            [ class "elm-reduces-js-fatigue"
            ]
            [ h1 [] [ text "Elm reduces JavaScript fatigue" ]
            , img
                [ alt "JS fatigue vs. Elm"
                , src "images/js-fatigue-vs-elm.jpg"
                ]
                []
            , div []
                [ em []
                    [ text "image from "
                    , a
                        [ href "https://github.com/dwyl/learn-elm/" ]
                        [ text "github.com/dwyl/learn-elm" ]
                    ]
                ]
            ]


howElmReducesJavaScriptFatigue : Slides.Slide
howElmReducesJavaScriptFatigue =
    Slides.mdFragments
        [ "# How Elm reduces JavaScript fatigue"
        , "* Cohesive ecosystem"
        , "* Different language, focused on simplicity"
        , "* One framework"
        , "* Libraries must follow semantic versioning and provide documentation"
        , "* Compile-time errors"
        ]


whatNext : Slides.Slide
whatNext =
    Slides.mdFragments
        [ "# What next?"
        , "* Try Elm at [elm-lang.org](http://elm-lang.org/try)"
        , "* ...or try my Intro to Elm series at [absynce.github.io](http://absynce.github.io)"
        , """Find me everywhere:
<br />
@absynce
<br />
![My profile pic](https://gravatar.com/avatar/b10e25a444d72682d875ff745166b91c?s=188)"""
        ]
