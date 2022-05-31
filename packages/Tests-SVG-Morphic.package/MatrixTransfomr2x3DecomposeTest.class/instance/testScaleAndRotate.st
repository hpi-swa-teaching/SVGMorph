testing - composite
testScaleAndRotate

	self
		scale: -15 @ 4;
		rotate: 50.

	self assert: (-15 @ 4) closeTo: self subject compositeScale.
	self assert: 50 closeTo: self subject compositeRotation