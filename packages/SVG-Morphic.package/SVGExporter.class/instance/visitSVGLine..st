visiting
visitSVGLine: aLine

	|element|
	element := SVGXMLElement new.

	self applyCommonAttributesOf: aLine on: element.
	self applyLineAttributesOf: aLine on: element.

	^ element