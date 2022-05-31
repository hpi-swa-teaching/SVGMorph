testing - composite
testRotateAndTranslate

	self
		rotate: 45;
		translate: 17 @ 10.

	self assert: 45 closeTo: self subject compositeRotation.
	self assert: (17 @ 10) closeTo: self subject compositeTranslation