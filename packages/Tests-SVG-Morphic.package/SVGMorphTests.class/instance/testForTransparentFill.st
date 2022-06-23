SVG colors (fill, stroke, width)
testForTransparentFill

	|transparentFillObjects transparentFillMorphs|
	transparentFillObjects := self transparentFillObjects.
	transparentFillMorphs := transparentFillObjects collect: [:aSVGMorph| (SVGMorph fromString: (self perform: aSVGMorph)) submorphs first].
	^transparentFillMorphs do: [:aSVGMorph| self testFillIn: aSVGMorph with: Color transparent]