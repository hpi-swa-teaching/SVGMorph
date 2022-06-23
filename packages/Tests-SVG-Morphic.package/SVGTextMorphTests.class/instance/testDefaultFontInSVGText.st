defaultFont
testDefaultFontInSVGText

	|svgTextMorph|

	svgTextMorph := SVGMorph fromString: self basicTextSVG.

	self assert: self defaultFont equals: svgTextMorph submorphs first fontToUse familyName