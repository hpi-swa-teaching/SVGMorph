visiting
visitSVGRectangle: aRectangle

	self
		readCommonAttributesOf: aRectangle;
		readRectangleAttributesOf: aRectangle.
	^ self asList