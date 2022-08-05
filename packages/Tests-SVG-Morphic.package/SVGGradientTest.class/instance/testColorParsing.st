tests
testColorParsing

	|colorRamp|
	self wantsToTestSunsetGradient.
	colorRamp := (self subject fills at: 'myGradient') colorRamp.

	self assert: Color yellow equals: colorRamp first value.
	self assert: 0 equals: colorRamp first key.
	self assert: Color red equals: colorRamp second value.
	self assert: (19/20) equals: colorRamp second key