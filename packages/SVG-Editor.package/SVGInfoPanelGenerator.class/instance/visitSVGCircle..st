visiting
visitSVGCircle: aCircle
	
	^ self 
		readCommonAttributesOf: aCircle;
		readCircleAttributesOf: aCircle;
		asList
	