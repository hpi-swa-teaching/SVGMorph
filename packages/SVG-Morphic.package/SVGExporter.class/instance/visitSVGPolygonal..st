visiting
visitSVGPolygonal: aPolygonal

	|element|
	element := SVGXMLElement new.

	self applyCommonAttributesOf: aPolygonal on: element.
	self applyPolygonalAttributesOf: aPolygonal on: element.

	^ element