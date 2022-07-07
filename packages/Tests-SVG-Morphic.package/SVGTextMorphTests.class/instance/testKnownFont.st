testing - knownFont
testKnownFont

	|knownFonts svgTextMorph|
	
	svgTextMorph := SVGMorph fromString: self knownFontTextSVG.
	knownFonts := OrderedCollection newFrom: {'Atlanta'. 'Accujen'}.
	
	(1 to: 2) do: [:i | self assert: (knownFonts at: i) equals: (svgTextMorph submorphs at: i) fontToUse familyName]