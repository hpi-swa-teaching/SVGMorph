*SVG-Morphic
compositeSkew

	| matrix |
	matrix := self 
		composedWithGlobal: (MatrixTransform2x3
			 withAngle: self compositeRotation negated).
	^ (matrix a21 / matrix a22) degreeArcTan