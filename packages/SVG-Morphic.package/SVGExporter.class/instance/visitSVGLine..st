visiting
visitSVGLine: aLine
	
	|element|
	element := XMLElement new.
	
	self applyCommonAttributesOf: aLine on: element.
	self applyLineAttributesOf: aLine on: element.
	
	^ element