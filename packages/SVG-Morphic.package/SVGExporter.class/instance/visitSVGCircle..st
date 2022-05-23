visiting
visitSVGCircle: aCircle
	
	|element|
	element := XMLElement new.
	
	self applyCommonAttributesOf: aCircle on: element.
	self applyCircleAttributesOf: aCircle on: element.
	
	^ element