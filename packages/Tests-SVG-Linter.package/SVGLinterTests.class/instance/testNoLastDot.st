tests
testNoLastDot

	"Checks that the last statement of a method is not ended by a dot"
	self methodsLinesDo: [:lines |
		self assert: (((self lastNonEmptyLine: lines) withBlanksTrimmed endsWith: '.') not)]