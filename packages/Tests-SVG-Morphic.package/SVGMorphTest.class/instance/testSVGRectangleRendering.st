testing - rendering
testSVGRectangleRendering

	| renderer |
	
	renderer := SVGRendererMock new.

	self 
		wantsToTestRectangle;
		addRenderer: renderer on: SVGRectMorph;
		render: SVGRectMorph;
		assert:  (renderer renderCount at: #renderRect ifAbsent: 0) equals: 1.
	
	