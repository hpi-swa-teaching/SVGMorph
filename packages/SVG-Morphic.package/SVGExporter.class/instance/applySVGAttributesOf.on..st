serializer
applySVGAttributesOf: aMorph on: anElement

	anElement
		name: 'svg';
		attributeAt: 'version' put: '1.1';
		attributeAt: 'xmlns' put: 'http://www.w3.org/2000/svg'.
	aMorph svgWidth
		ifNotNil: [anElement attributeAt: 'width' put: aMorph svgWidth].
	aMorph svgHeight
		ifNotNil: [anElement attributeAt: 'height' put: aMorph svgHeight].
	aMorph viewBox
		ifNotNil: [anElement attributeAt: 'viewBox' put: aMorph viewBox]