visiting
visitSVGText: aText
	
	|element|
	element := XMLElement new.
	
	self applyCommonAttributesOf: aText on: element.
	self applyTextAttributesOf: aText on: element.
	
	^ element