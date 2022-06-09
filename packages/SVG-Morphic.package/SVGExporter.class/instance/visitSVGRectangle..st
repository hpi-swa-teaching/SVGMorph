visiting
visitSVGRectangle: aRectangle
	
	|element|
	element := SVGXMLElement new.
	
	self applyCommonAttributesOf: aRectangle on: element.
	self applyRectangleAttributesOf: aRectangle on: element.
	
	^ element