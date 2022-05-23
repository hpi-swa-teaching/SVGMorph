serializer
applySVGAttributesOf: aMorph on: anElement
	
	anElement
		name: 'svg';
		attributeAt: 'version' put: '1.1';
		attributeAt: 'xmlns' put: 'http://www.w3.org/2000/svg';
		attributeAt: 'width' put: aMorph extent x asString;
		attributeAt: 'height' put: aMorph extent y asString