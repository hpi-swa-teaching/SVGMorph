visiting
visitSVGLine: aLine

	|element|
	element := SVGXMLElement new.

	self
		applyCommonAttributesOf: aLine on: element;
		applyLineAttributesOf: aLine on: element.

	^ element