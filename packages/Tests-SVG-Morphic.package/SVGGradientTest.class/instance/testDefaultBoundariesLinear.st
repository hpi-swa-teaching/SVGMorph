tests
testDefaultBoundariesLinear

	|gradient end start |
	self wantsToTestSunsetGradient.
	gradient := (self subject fills at: 'myGradient').
	
	start := 0.0@0.
	end := 1@0.
	
	self assert: start equals: gradient origin.
	self assert: end-start equals: gradient direction.
	
	