Parsing SVG Strings
testStrokeWidth: aSVGMorph with: aStrokeWidth

	^self testSVGValue: aSVGMorph at: 'stroke-width' against: aStrokeWidth.