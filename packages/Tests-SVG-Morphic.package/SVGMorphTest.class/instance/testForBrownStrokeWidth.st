testing - colors (fill, stroke, width)
testForBrownStrokeWidth

|brownStrokeObjects brownStrokeMorphs|
brownStrokeObjects := self brownStrokeObjects.
brownStrokeMorphs := brownStrokeObjects collect: [ :aSVGMorph| (SVGMorph fromString: (self perform: aSVGMorph)) submorphs first].
^brownStrokeMorphs do: [ :aSVGMorph| self testStrokeWidth: aSVGMorph with: 50.].