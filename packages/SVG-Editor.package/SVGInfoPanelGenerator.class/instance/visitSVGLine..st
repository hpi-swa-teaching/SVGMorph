visiting
visitSVGLine: aLine
	
	^ self 
		readCommonAttributesOf: aLine;
		readLineAttributesOf: aLine;
		asList