width, height, viewBox parsing
testPercentageHeight

	|sv|
	sv := SVGMorph fromString: self percentageHeight.
	self assert: 10 equals: sv height