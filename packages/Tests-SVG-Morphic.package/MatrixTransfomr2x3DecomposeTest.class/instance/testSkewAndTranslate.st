testing - composite
testSkewAndTranslate

	self
		skew: 15;
		translate: 17 @ 10.

	self assert: 15 closeTo: self subject compositeSkew.
	self assert: (17 @ 10) closeTo: self subject compositeTranslation