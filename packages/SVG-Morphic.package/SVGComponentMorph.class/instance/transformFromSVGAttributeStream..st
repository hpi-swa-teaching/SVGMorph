initialization
transformFromSVGAttributeStream: str
	"Answer a new MatrixTransform2x3 for the transform (sub)attribute."

	| matrix type argStream args |
	matrix := MatrixTransform2x3 identity.
	type := str upToAny: {$(. Character space . Character tab . Character cr . Character lf}.
	str upTo: $(.
	argStream := (str upTo: $)) readStream.
	args := OrderedCollection new.
	[argStream atEnd]
		whileFalse: [args add: argStream nextNumber].
	(type = 'matrix')
		ifTrue: [matrix
				a11: (args first);
				a21: (args second);
				a12: (args third);
				a22: (args fourth);
				a13: (args fifth);
				a23: (args sixth)].
	(type = 'translate')
		ifTrue: [
			(args size < 2)
				ifTrue: [args add: 0].
			matrix
					setOffset: (args first) @ (args second)].
	(type = 'scale')
		ifTrue: [
			(args size < 2)
				ifTrue: [args add: (args first)].
			matrix
					setScale: (args first) @ (args second)].
	(type = 'rotate')
		ifTrue: [
				matrix
					setAngle: (args first).
				(args size >= 3)
					ifTrue: [matrix := ((MatrixTransform2x3 withOffset: (args first) @ (args second))
									composedWithLocal: matrix)
									composedWithLocal: (MatrixTransform2x3 withOffset: (args first) @ (args second) negated)]].

	"The X and Y may seem switched here, however, this is correct for SVG parsing"
	(type = 'skewX')
		ifTrue: [matrix
					setSkew: 0 @ (args first)].
	(type = 'skewY')
		ifTrue: [
				matrix
					setSkew: (args first) @ 0].
	^ matrix