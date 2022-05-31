testing - composite
testSkewAndRotate

	self
		skew: 15;
		rotate: -35.

	self assert: 15 closeTo: self subject compositeSkew.
	self assert: -35 closeTo: self subject compositeRotation