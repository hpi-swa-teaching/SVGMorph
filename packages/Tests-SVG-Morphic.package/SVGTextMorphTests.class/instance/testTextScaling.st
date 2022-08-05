scaledText
testTextScaling

	| svgTextMorph expectedSizes |

	svgTextMorph := SVGMorph fromString: self scalingTextSVG.

	expectedSizes := OrderedCollection newFrom: {21. 20. 1. 1. 100. 10}.

	(1 to: 6) do: [:i | self assert: (expectedSizes at: i) equals: (svgTextMorph submorphs at: i) fontToUse pointSize]