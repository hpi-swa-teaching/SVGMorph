as yet unclassified
visitSVGLine: aLine
	
	|element|
	element := XMLElement new.
	
	self applyCommonAttributesFrom: aLine on: element.
	
	^ element
		name: 'line';
		attributeAt: 'x1' put: aLine bounds origin x asString;
		attributeAt: 'y1' put: aLine bounds origin y asString;
		attributeAt: 'x2' put: aLine bounds corner x asString;
		attributeAt: 'y2' put: aLine bounds corner y asString;
		yourself