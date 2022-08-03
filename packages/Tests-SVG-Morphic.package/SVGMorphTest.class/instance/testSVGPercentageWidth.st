testing - properties
testSVGPercentageWidth

	|svg|

	self wantsToTestPercentageSize.
	svg := self subject.

	self assert: 80 equals: svg width