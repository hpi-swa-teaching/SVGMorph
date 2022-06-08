testing - colors (fill, stroke, width)
testForBlueFill

|blueFillObjects blueFillMorphs|
blueFillObjects := self blueFillObjects.
blueFillMorphs := blueFillObjects collect: [ :aSVGMorph| (SVGMorph fromString: (self perform: aSVGMorph)) submorphs first].
^blueFillMorphs do: [ :aSVGMorph| self testFillIn: aSVGMorph with: Color blue.].

