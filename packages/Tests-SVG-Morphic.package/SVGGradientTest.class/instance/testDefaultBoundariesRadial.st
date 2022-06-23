tests
testDefaultBoundariesRadial

	|gradient direction start |
	self wantsToTestSunsetGradient.
	gradient := (self subject fills at: 'radialGradient1').
	
	start := 0.5 @ 0.5.
	direction := 0.5 @ 0.
	
	self assert: start equals: gradient origin.
	self assert: direction equals: gradient direction