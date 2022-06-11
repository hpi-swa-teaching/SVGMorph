visiting
visitSVGText: aText

	|element|
	element := SVGXMLElement new.

	self applyCommonAttributesOf: aText on: element.
	self applyTextAttributesOf: aText on: element.
	self serializeTextChildren: aText on: element.

	^ element