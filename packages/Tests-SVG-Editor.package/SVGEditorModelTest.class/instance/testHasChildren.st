testing
testHasChildren

	|svg|
	svg := self treeViewTestSVG.
	self subject svg: svg.
		
	self	
		assert: true equals: (self subject hasChildren: svg);
		assert: false equals: (self subject hasChildren: (svg submorphs first))
	