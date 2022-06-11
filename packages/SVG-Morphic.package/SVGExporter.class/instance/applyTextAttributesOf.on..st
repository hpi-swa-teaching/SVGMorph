serializer
applyTextAttributesOf: aText on: anElement

	anElement
		name: 'text';
		attributeAt: 'x' put: aText location x asString;
		attributeAt: 'y' put: aText location y asString