testing - default values
testDefaultTextAnchor

	|svg|
	self wantsToTestEmpty.

	svg := self subject.
	self assert: 'start' equals: (svg composedStyle at: 'text-anchor')