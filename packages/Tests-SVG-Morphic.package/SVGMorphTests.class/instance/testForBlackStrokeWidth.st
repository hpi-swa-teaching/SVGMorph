SVG colors (fill, stroke, width)
testForBlackStrokeWidth

|blackStrokeObjects blackStrokeMorphs|
blackStrokeObjects := self blackStrokeObjects.
blackStrokeMorphs := blackStrokeObjects collect: [:aSVGMorph| (SVGMorph fromString: (self perform: aSVGMorph)) submorphs first].
^blackStrokeMorphs do: [:aSVGMorph| self testStrokeWidth: aSVGMorph with: 5]