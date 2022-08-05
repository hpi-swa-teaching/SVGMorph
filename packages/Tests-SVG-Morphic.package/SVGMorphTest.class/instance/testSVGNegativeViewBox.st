testing - properties
testSVGNegativeViewBox

	|svg|

	self wantsToTestNegativeViewBox.
	svg := self subject.

	self assert: (Rectangle origin: (-200 @ -50) extent: 100 @ 100) equals: svg bounds