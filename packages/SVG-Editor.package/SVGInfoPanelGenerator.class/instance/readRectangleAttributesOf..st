helpers
readRectangleAttributesOf: aRectangle

	self 
		at: 'Position' put: aRectangle rectangle origin asString;
		at: 'Width' put: (aRectangle rectangle width) asString;
		at: 'Height' put: (aRectangle rectangle height) asString