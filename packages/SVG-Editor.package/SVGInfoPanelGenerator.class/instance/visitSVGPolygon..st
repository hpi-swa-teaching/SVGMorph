visiting
visitSVGPolygon: aPolygon

	self
		readCommonAttributesOf: aPolygon;
		readPointsOf: aPolygon.
	^ self asList