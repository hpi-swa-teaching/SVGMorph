helpers
assertMatrix: expected closeTo: actual
	
	self assert: [self matrix: expected approxEqual: actual]