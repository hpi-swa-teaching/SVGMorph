as yet unclassified
transformFrom: uberMorph

	(self owner isNil or:[self == uberMorph]) ifTrue: [^self transform].
	^ (self owner transformFrom: uberMorph) asMatrixTransform2x3 composedWithLocal: self transform