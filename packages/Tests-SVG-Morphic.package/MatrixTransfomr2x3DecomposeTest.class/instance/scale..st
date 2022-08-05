helpers
scale: aPoint

	self subject: (self subject composedWithGlobal: (MatrixTransform2x3 withScale: aPoint))