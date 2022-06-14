*SVG-Morphic
compositeScale

	"Y-scale is never negative, instead we use 180° rotations."
	| matrix |
	matrix := self 
		composedWithGlobal: (MatrixTransform2x3
			 withAngle: self compositeRotation negated).
	^ matrix a11 @ matrix a22