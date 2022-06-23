Parsing SVG Strings
testForId

	|morph|
	morph := (SVGMorph fromString: self idSVG) submorphs first.
	self assert: 'someRandomId' equals: morph id