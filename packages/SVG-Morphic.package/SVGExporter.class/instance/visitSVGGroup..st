visiting
visitSVGGroup: aGroup

	|element|
	element := SVGXMLElement new.

	self applyCommonAttributesOf: aGroup on: element.
	self applyGroupAttributesOf: aGroup on: element.
	self addSubmorphsOf: aGroup to: element.

	^ element