visiting
visitSVGEllipse: anEllipse
	
	^ self 
		readCommonAttributesOf: anEllipse;
		readEllipseAttributesOf: anEllipse;
		asList