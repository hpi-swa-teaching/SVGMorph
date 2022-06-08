testing - integration
testScaleAndSkewAndRotateAndTranslateAndSkewAndRotate

	self
		scale: 0.1 @ -3;
		skew: 0.3;
		rotate: 50;
		translate: -15 @ 4;
		skew: -7;
		rotate: -45.

	self assertReconstructable