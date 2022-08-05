testing - composite
testSkewAndScale

	self
		skew: 15;
		scale: -3 @ 4.

	self assert: 15 closeTo: self subject compositeSkew.
	self assert: (-3 @ 4) closeTo: self subject compositeScale