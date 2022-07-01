testing - default values
testDefaultStrokeWidth

	|svg|
	self wantsToTestEmpty.

	svg := self subject.
	self assert: 1 equals: (svg composedStyle at: 'stroke-width')