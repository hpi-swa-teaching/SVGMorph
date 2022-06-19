as yet unclassified
testBoundaryParsingRadial

	|gradient direction start|
	self wantsToTestSunsetGradient.
	gradient := (self subject fills at: 'radialGradient2').
	
	start := 0.2@0.3.
	direction := 0.5@0.5.
	
	self assert: start equals: gradient origin.
	self assert: 0.5 equals: (gradient direction + gradient normal - gradient origin) r.
	
	