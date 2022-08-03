testing - properties
testSVGPercentageHeight

	|svg|

	self wantsToTestPercentageSize.
	svg := self subject.

	self assert: 10 equals: svg height