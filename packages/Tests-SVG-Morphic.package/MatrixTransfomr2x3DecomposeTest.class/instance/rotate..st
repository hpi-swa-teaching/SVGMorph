helpers
rotate: anAngle

	self subject: (self subject composedWithGlobal: (MatrixTransform2x3 withAngle: anAngle))