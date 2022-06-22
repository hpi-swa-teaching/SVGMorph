as yet unclassified
testBoundaryParsingLinear

	|gradient end start |
	self wantsToTestSunsetGradient.
	gradient := (self subject fills at: 'sizedGradient').
	
	start := 0.5@0.
	end := 0.9@0.7.
	
	self assert: start equals: gradient origin.
	self assert: end-start equals: gradient direction.
	
	