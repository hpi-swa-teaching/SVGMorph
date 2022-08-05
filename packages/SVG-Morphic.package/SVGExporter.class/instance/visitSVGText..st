visiting
visitSVGText: aText

	|element|
	element := SVGXMLElement new.

	self
		applyCommonAttributesOf: aText on: element;
		applyTextAttributesOf: aText on: element;
		serializeTextChildren: aText on: element.

	^ element