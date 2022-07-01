testing - default values
testDefaultStrokeLinecap

	|svg|
	self wantsToTestEmpty.

	svg := self subject.
	self assert: #butt equals: (svg composedStyle at: 'stroke-linecap')