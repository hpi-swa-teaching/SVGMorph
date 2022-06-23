tests
testIDParsing

	|gradient|
	self wantsToTestSunsetGradient.
	gradient := (self subject fills at: 'radialGradient2').
	
	self assert: 'radialGradient2' equals: (gradient id)
	
	