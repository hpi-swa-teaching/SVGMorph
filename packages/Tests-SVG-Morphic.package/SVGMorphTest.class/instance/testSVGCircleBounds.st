testing - properties
testSVGCircleBounds
	"Currently, the bounds calculation for circles has an off-by-one-error. Thus, this test is marked as an expected failure."

	|bounds|

	self wantsToTestCircle.
	bounds := (self subject findByClass: SVGCircleMorph) bounds.
	self
		assert: -30 equals: bounds origin x;
		assert: -20 equals: bounds origin y ;
		assert: 90 equals: bounds corner x ;
		assert: 100 equals: bounds corner y