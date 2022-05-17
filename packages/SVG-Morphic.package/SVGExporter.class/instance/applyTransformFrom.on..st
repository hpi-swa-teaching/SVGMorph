as yet unclassified
applyTransformFrom: aMorph on: anXMLElement

	|transform|
	transform := aMorph transform.
	(transform = MatrixTransform2x3 identity)
		ifTrue: [^self].
	anXMLElement attributeAt: 'transform' put: 'matrix(' , (transform a11 asString) , ',' , (transform a21 asString) , ',' , (transform a12 asString) , ',' , (transform a22 asString) , ',' , (transform a13 asString) , ',' , (transform a23 asString) , ')'