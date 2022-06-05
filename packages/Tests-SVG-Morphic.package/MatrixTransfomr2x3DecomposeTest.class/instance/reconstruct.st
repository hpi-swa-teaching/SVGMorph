helpers
reconstruct

	| matrix |
	matrix := MatrixTransform2x3 identity.
	
	matrix := matrix composedWithGlobal: (MatrixTransform2x3 withSkew: self subject compositeSkew @ 0).
	matrix := matrix composedWithGlobal: (MatrixTransform2x3 withScale: self subject compositeScale).
	matrix := matrix composedWithGlobal: (MatrixTransform2x3 withAngle: self subject compositeRotation).
	matrix := matrix composedWithGlobal: (MatrixTransform2x3 withOffset: self subject compositeTranslation).
	
	^ matrix