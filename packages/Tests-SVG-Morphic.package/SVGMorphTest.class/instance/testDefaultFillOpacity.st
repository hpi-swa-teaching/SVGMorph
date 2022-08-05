testing - default values
testDefaultFillOpacity

	|svg|
	self wantsToTestEmpty.

	svg := self subject.
	self assert: 1 equals: (svg composedStyle at: 'fill-opacity')