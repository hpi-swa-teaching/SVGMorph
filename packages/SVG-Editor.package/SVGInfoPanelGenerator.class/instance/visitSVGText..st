visiting
visitSVGText: aText

	^ self 
		readCommonAttributesOf: aText;
		readTextAttributesOf: aText;
		asList