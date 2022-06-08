testing - parsing(id)
testForId

	|morph|
	morph := (SVGMorph fromString: self idSVG) submorphs first.
	self assert: 'someRandomId' equals: morph id

