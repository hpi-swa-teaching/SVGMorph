testing - colors (fill, stroke, width)
testStrokeWidth: aSVGMorph with: aStrokeWidth

	^self testSVGValue: aSVGMorph at: 'stroke-width' against: aStrokeWidth.