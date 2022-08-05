testing - default values
testDefaultStroke

	|svg|
	self wantsToTestEmpty.

	svg := self subject.
	self assert: Color transparent equals: (svg composedStyle at: 'stroke')