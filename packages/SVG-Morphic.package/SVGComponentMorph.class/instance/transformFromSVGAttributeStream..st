as yet unclassified
transformFromSVGAttributeStream: str
	"Answer a new MatrixTransform2x3 for the transform (sub)attribute."

	| matrix type argStream args |
	matrix := MatrixTransform2x3 identity.
	type := str upToAny: { $(. Character space . Character tab . Character cr . Character lf}.
	str upTo: $(.
	argStream := (str upTo: $)) readStream.
	args := OrderedCollection new.
	[argStream atEnd]
		whileFalse: [args add: argStream nextNumber].
	(type = 'matrix')
		ifTrue: [matrix
				a11: (args at: 1);
				a21: (args at: 2);
				a12: (args at: 3);
				a22: (args at: 4);
				a13: (args at: 5);
				a23: (args at: 6)].
	(type = 'translate')
		ifTrue: [
			(args size < 2)
				ifTrue: [args add: 0].
			matrix
					setOffset: (args at: 1) @ (args at: 2)].
	(type = 'scale')
		ifTrue: [
			(args size < 2)
				ifTrue: [args add: (args at: 1)].
			matrix
					setScale: (args at: 1) @ (args at: 2)].
	(type = 'rotate')
		ifTrue: [
				matrix
					setAngle: (args at: 1).
				(args size >= 3)
					ifTrue: [matrix := ((MatrixTransform2x3 withOffset: (args at: 1) @ (args at: 2))
									composedWithLocal: matrix)
									composedWithLocal: (MatrixTransform2x3 withOffset: (args at: 1) @ (args at: 2) negated)]].
							
	"The X and Y may seem switched here, however, this is correct for SVG parsing"
	(type = 'skewX')
		ifTrue: [matrix
					setSkew: 0 @ (args at: 1)].
	(type = 'skewY')
		ifTrue: [
				matrix
					setSkew: (args at: 1) @ 0].
	^matrix