Parsing SVG Strings
testForId

	|morph|
	morph := (SVGMorph fromString: self idTestCase input) submorphs first.
	self assert: 'someRandomId' equals: morph id

