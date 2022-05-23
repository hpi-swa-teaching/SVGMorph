visiting
visitSVGRectangle: aRectangle
	
	|element|
	element := XMLElement new.
	
	self applyCommonAttributesOf: aRectangle on: element.
	self applyRectangleAttributesOf: aRectangle on: element.
	
	^ element