serializer
applyLineAttributesOf: aLine on: anElement
	
	anElement
		name: 'line';
		attributeAt: 'x1' put: aLine rectangle origin x asString;
		attributeAt: 'y1' put: aLine rectangle origin y asString;
		attributeAt: 'x2' put: aLine rectangle corner x asString;
		attributeAt: 'y2' put: aLine rectangle corner y asString