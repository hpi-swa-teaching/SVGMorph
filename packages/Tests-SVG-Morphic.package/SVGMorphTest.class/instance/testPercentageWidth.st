testing - paring(width, height, viewBox)
testPercentageWidth
	|sv|
	sv := SVGMorph fromString: self percentageWidth.
	self assert: 80 equals: sv width.