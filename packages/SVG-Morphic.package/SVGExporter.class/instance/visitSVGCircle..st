visiting
visitSVGCircle: aCircle

	|element|
	element := SVGXMLElement new.

	self applyCommonAttributesOf: aCircle on: element.
	self applyCircleAttributesOf: aCircle on: element.

	^ element