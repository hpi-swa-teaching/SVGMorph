visiting
visitSVGPolyline: aPolyline

	self
		readCommonAttributesOf: aPolyline;
		readPointsOf: aPolyline.
	^ self asList