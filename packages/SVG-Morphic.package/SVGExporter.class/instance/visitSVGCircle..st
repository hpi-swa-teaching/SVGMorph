visiting
visitSVGCircle: aCircle

	|element|
	element := SVGXMLElement new.

	self
		applyCommonAttributesOf: aCircle on: element;
		applyCircleAttributesOf: aCircle on: element.

	^ element