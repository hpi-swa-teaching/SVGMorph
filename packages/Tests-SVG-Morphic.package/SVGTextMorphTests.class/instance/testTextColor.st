defaultColor
testTextColor

	| svgTextMorph expectedColors |
	
	svgTextMorph := SVGMorph fromString: self basicColorTextSVG.
	expectedColors := OrderedCollection newFrom: {'#29A700'. 'red'. 'black'. self defaultColor.}.
	
	(1 to: 4) do: [:i | self assert: (Color fromString: (expectedColors at: i)) equals: ((svgTextMorph submorphs at: i) composedStyle at: 'fill')]
