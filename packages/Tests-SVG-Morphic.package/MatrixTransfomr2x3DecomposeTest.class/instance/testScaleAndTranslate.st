testing - composite
testScaleAndTranslate

	self
		scale: -15 @ 4;
		translate: 17 @ 10.

	self assert: (-15 @ 4) closeTo: self subject compositeScale.
	self assert: (17 @ 10) closeTo: self subject compositeTranslation