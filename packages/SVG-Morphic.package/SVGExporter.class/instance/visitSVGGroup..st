visiting
visitSVGGroup: aGroup

	|element|
	element := SVGXMLElement new.

	self
		applyCommonAttributesOf: aGroup on: element;
		applyGroupAttributesOf: aGroup on: element;
		addSubmorphsOf: aGroup to: element.

	^ element