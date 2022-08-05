testing - default values
testDefaultFill

	|svg|
	self wantsToTestEmpty.

	svg := self subject.
	self assert: Color black equals: (svg composedStyle at: 'fill')