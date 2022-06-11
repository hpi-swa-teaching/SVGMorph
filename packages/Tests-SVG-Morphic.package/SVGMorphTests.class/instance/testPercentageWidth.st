width, height, viewBox parsing
testPercentageWidth
	|sv|
	sv := SVGMorph fromString: self percentageWidth.
	self assert: 80 equals: sv width