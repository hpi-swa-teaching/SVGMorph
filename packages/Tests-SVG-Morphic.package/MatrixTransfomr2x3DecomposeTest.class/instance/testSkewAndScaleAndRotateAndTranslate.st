testing - composite
testSkewAndScaleAndRotateAndTranslate

	self
		skew: 15;
		scale: -12 @ 14;
		rotate: -120;
		translate: 17 @ 10.

	self assert: 15 closeTo: self subject compositeSkew.
	self assert: (-12 @ 14) closeTo: self subject compositeScale.
	self assert: -120 closeTo: self subject compositeRotation.
	self assert: (17 @ 10) closeTo: self subject compositeTranslation