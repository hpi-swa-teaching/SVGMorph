Parsing SVG Strings
testForId

|morph|
morph := (SVGMorph fromString: self idTestSVG) submorphs first.
self assert: 'someRandomId' equals: morph id

