visiting
visitSVGPath: aPath
	
	|element|
	element := XMLElement new.
	
	self applyCommonAttributesOf: aPath on: element.
	self applyPathAttributesOf: aPath on: element.
	
	^ element