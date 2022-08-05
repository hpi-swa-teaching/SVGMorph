helpers
translate: aPoint

	self subject: (self subject composedWithGlobal: (MatrixTransform2x3 withOffset: aPoint))