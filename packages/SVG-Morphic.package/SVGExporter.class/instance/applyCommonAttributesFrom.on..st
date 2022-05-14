as yet unclassified
applyCommonAttributesFrom: aMorph on: anXMLElement

	aMorph id
		ifNotNil: [anXMLElement attributeAt: 'id' put: aMorph id].
	self applyStyleFrom: aMorph on: anXMLElement.
	self applyTransformFrom: aMorph on: anXMLElement