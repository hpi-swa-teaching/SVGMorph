testing - default values
testDefaultFillRule

	|svg|
	self wantsToTestEmpty.

	svg := self subject.
	self assert: 'nonzero' equals: (svg composedStyle at: 'fill-rule')