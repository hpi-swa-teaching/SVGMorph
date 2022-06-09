testing
testChildrenOf

	|svg|
	svg := self treeViewTestSVG.
	self subject svg: svg.
		
	self	assert: svg submorphs equals: (self subject getChildrenOf: svg)