visiting
visitSVGPolyline: aPolyline

	^ self 
		readCommonAttributesOf: aPolyline;
		readPointsOf: aPolyline;
		asList