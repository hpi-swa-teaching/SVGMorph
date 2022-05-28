helpers
readLineAttributesOf: aLine

	self 
		at: 'Start' put: aLine rectangle origin asString;
		at: 'End' put: aLine rectangle corner asString