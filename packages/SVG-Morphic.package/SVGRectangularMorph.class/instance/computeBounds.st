as yet unclassified
computeBounds

	rectangle ifNil: [^ self].
	fullBounds := bounds := self transform localBoundsToGlobal: rectangle