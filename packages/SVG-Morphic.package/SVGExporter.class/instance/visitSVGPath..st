visiting
visitSVGPath: aPath

	|element|
	element := SVGXMLElement new.

	self
		applyCommonAttributesOf: aPath on: element;
		applyPathAttributesOf: aPath on: element.

	^ element