testing - paring(width, height, viewBox)
testPercentageHeight
	|sv|
	sv := SVGMorph fromString: self percentageHeight.
	self assert: 10 equals: sv height.