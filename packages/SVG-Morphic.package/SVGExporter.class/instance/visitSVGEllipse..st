visiting
visitSVGEllipse: anEllipse
	
	|element|
	element := XMLElement new.
	
	self applyCommonAttributesOf: anEllipse on: element.
	self applyEllipseAttributesOf: anEllipse on: element.
	
	^ element