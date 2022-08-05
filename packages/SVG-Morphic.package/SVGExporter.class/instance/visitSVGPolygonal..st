visiting
visitSVGPolygonal: aPolygonal

	|element|
	element := SVGXMLElement new.

	self
		applyCommonAttributesOf: aPolygonal on: element;
		applyPolygonalAttributesOf: aPolygonal on: element.

	^ element