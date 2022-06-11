serializer
applyRectangleAttributesOf: aRectangle on: anElement

	anElement
		name: 'rect';
		attributeAt: 'x' put: aRectangle rectangle origin x asString;
		attributeAt: 'y' put: aRectangle rectangle origin y asString;
		attributeAt: 'width' put: aRectangle rectangle width asString;
		attributeAt: 'height' put: aRectangle rectangle height asString