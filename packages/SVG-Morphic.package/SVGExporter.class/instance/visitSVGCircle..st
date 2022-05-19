as yet unclassified
visitSVGCircle: aCircle
	
	|element|
	element := XMLElement new.
	
	self applyCommonAttributesFrom: aCircle on: element.
	
	^ element
		name: 'circle';
		attributeAt: 'cx' put: aCircle bounds center x asString;
		attributeAt: 'cy' put: aCircle bounds center y asString;
		attributeAt: 'r' put: (aCircle bounds width / 2)  asString;
		yourself