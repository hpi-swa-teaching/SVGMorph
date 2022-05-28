helpers
readEllipseAttributesOf: anEllipse

	self 
		at: 'Position' put: anEllipse rectangle center asString;
		at: 'Horizontal Radius' put: (anEllipse rectangle width / 2) asString;
		at: 'Vertical Radius' put: (anEllipse rectangle height / 2) asString