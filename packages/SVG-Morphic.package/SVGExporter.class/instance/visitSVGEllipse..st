visiting
visitSVGEllipse: anEllipse
	
	|element|
	element := SVGXMLElement new.
	
	self applyCommonAttributesOf: anEllipse on: element.
	self applyEllipseAttributesOf: anEllipse on: element.
	
	^ element