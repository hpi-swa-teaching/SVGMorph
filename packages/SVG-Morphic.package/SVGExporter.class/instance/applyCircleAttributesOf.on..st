serializer
applyCircleAttributesOf: aCircle on: anElement

	anElement
		name: 'circle';
		attributeAt: 'cx' put: aCircle rectangle center x asString;
		attributeAt: 'cy' put: aCircle rectangle center y asString;
		attributeAt: 'r' put: (aCircle rectangle width / 2)  asString