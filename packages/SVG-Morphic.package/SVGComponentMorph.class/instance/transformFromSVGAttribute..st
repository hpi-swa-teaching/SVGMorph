as yet unclassified
transformFromSVGAttribute: trans
	"Answer a new MatrixTransform2x3 for the transform attribute."

	|str matrix|
	matrix := MatrixTransform2x3 identity.
	trans ifNil: [^matrix].
	str := trans readStream.
	str skipSeparators.
	[str atEnd] whileFalse: [
		matrix := matrix composedWithLocal: (self transformFromSVGAttributeStream: str).
		str skipSeparators.
		(str peek = $,)
			ifTrue: [str next].
		str skipSeparators].
	^ matrix