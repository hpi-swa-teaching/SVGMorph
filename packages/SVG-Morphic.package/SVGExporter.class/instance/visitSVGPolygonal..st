visiting
visitSVGPolygonal: aPolygonal
	
	|element|
	element := XMLElement new.
	
	self applyCommonAttributesOf: aPolygonal on: element.
	self applyPolygonalAttributesOf: aPolygonal on: element.
	
	^ element