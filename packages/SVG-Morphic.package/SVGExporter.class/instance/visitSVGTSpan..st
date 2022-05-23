visiting
visitSVGTSpan: aTSpan
	
	|element|
	element := XMLElement new.

	self applyCommonAttributesOf: aTSpan on: element.
	self applyTSpanAttributesOf: aTSpan on: element.
	self serializeTextChildren: aTSpan on: element.

	^ element