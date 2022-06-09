helpers
readCircleAttributesOf: aCircle

	self 
		at: 'Position' put: aCircle rectangle center asString;
		at: 'Radius' put: (aCircle rectangle width / 2) asString