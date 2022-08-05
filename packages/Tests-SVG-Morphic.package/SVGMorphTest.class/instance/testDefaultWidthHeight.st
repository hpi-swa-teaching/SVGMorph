testing - default values
testDefaultWidthHeight

	|svg|
	self wantsToTestEmpty.

	svg := self subject.
	self assert: (Rectangle origin: 0 @ 0 corner: 300 @ 150) equals: svg bounds