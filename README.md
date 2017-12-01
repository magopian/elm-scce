# SCCE for the weird Array.Hamt "max 48 size" bug

So, to reproduce:
- npm install elm-test
- elm-test init
- add `"Skinney/elm-array-exploration": "2.0.5 <= v < 3.0.0"` to the `tests/elm-package.json` file
- Compare the equality between two arrays with a size difference greater than 48 (see the `tests/Example.elm` file)
- run `elm-test` and get the following error:

```
20:33 $ node_modules/.bin/elm-test 
Success! Compiled 0 modules.                                        
Successfully generated /dev/null
Success! Compiled 1 module.                                         
Successfully generated /Users/mathieuagopian/elm-scce/elm-stuff/generated-code/elm-community/elm-test/elmTestOutput.js

elm-test 0.18.10
----------------

Running 1 test. To reproduce these results, run: elm-test --fuzz 100 --seed 502964043

Unhandled exception while running the tests: SyntaxError: Unexpected end of JSON input
    at JSON.parse (<anonymous>)
    at Socket.<anonymous> (/Users/mathieuagopian/elm-scce/node_modules/elm-test/lib/supervisor.js:120:26)
    at emitOne (events.js:115:13)
    at Socket.emit (events.js:210:7)
    at addChunk (_stream_readable.js:266:12)
    at readableAddChunk (_stream_readable.js:249:13)
    at Socket.Readable.push (_stream_readable.js:211:10)
    at Pipe.onread (net.js:585:20)

```
