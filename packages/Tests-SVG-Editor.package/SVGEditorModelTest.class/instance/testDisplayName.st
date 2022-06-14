testing
testDisplayName

	|svg|
	svg := self treeViewTestSVG.
	self subject svg: svg.
		
	self	assert: (svg displayName) equals: (self subject displayNameOf: svg)