helpers
skew: anAngle

	self subject: (self subject composedWithGlobal: (MatrixTransform2x3 withSkew: anAngle @ 0))