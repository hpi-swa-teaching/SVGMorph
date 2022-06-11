SVG colors (fill, stroke, width)
testSVGValue: aSVGMorph at: aSVGMorphAttribute against: anotherValue

^self assert: (aSVGMorph composedStyle at: aSVGMorphAttribute) equals: anotherValue
