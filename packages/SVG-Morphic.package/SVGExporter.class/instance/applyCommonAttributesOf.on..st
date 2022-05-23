serializer
applyCommonAttributesOf: aMorph on: anXMLElement

	aMorph id
		ifNotNil: [anXMLElement attributeAt: 'id' put: aMorph id].
	self applyStyleOf: aMorph on: anXMLElement.
	self applyTransformOf: aMorph on: anXMLElement