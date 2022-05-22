SVG colors (fill, stroke, width)
testForId

| morph|
morph := (SVGMorph fromString: self idTestSVG) submorphs first.
self assert: 'someRandomId' equals: morph id

