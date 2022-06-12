visiting
visitSVGLine: aLine

	self
		readCommonAttributesOf: aLine;
		readLineAttributesOf: aLine.
	^ self asList