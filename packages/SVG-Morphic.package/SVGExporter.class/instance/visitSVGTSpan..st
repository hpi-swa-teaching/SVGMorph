visiting
visitSVGTSpan: aTSpan

	|element|
	element := SVGXMLElement new.

	self
		applyCommonAttributesOf: aTSpan on: element;
		applyTSpanAttributesOf: aTSpan on: element;
		serializeTextChildren: aTSpan on: element.

	^ element