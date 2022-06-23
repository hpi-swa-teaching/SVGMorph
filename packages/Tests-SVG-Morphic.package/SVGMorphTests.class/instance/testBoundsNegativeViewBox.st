width, height, viewBox parsing
testBoundsNegativeViewBox

	|sv|
	sv := SVGMorph fromString: self negativeViewBoxSVG.
	self assert: (Rectangle origin: (-200 @ -50) extent: 100 @ 100) equals: sv bounds