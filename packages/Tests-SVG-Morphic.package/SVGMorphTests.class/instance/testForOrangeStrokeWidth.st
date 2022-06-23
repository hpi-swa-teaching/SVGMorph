SVG colors (fill, stroke, width)
testForOrangeStrokeWidth

	|orangeStrokeObjects orangeStrokeMorphs|
	orangeStrokeObjects := self orangeStrokeObjects.
	orangeStrokeMorphs := orangeStrokeObjects collect: [:aSVGMorph| (SVGMorph fromString: (self perform: aSVGMorph)) submorphs first].
	^orangeStrokeMorphs do: [:aSVGMorph| self testStrokeWidth: aSVGMorph with: 10]