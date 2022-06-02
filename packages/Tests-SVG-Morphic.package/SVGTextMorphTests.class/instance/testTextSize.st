textSize
testTextSize

	| svgTextMorph expectedSizes |
	
	svgTextMorph := SVGMorph fromString: self basicSizeTextSVG.
	expectedSizes := OrderedCollection newFrom: {1. 1. 187. 10. self defaultFontSize}.
	
	(1 to: 5) do: [:i | self assert: (expectedSizes at: i) equals: (svgTextMorph submorphs at: i) fontToUse pointSize]
	
	