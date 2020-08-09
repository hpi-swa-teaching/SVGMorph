Parsing SVG Strings
testSVGValue: aSVGMorph at: aSVGMorphAttribute against: anotherValue

^self assert: (aSVGMorph style at: aSVGMorphAttribute) equals: anotherValue.
	