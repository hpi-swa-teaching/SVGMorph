testing
testTreeRoots

	|svg|
	svg := self treeViewTestSVG.
	self subject	svg: svg.
		
	self assert: (Array with: svg) equals: self subject svgTree
	