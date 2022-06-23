width, height, viewBox parsing
testWidthHeightEmptySVG

	|svgMorph|
	svgMorph :=SVGMorph fromString: self emptySVG.
	self assert: (Rectangle origin: 0 @ 0 corner: 300 @ 150) equals: svgMorph bounds