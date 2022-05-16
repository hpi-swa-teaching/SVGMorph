Parsing SVG Strings
testSVGValue: aSVGMorph at: aSVGMorphAttribute against: anotherValue

^self assert: (aSVGMorph composedStyle at: aSVGMorphAttribute) equals: anotherValue.
	