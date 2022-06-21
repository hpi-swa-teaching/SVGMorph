testing - unknownFont
testUnknownFontInSVGText

	| svgTextMorph |
	
	svgTextMorph := SVGMorph fromString: self unknownFontTextSVG.

	self assert: self defaultFont equals: svgTextMorph submorphs first fontToUse familyName .