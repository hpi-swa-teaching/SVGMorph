visiting
visitSVGRectangle: aRectangle

	|element|
	element := SVGXMLElement new.

	self
		applyCommonAttributesOf: aRectangle on: element;
		applyRectangleAttributesOf: aRectangle on: element.

	^ element