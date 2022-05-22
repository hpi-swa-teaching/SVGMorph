testing - rendering
testSVGCircleRendering

	| renderer |
	
	renderer := SVGRendererMock new.

	self 
		wantsToTestCircle;
		addRenderer: renderer on: SVGCircleMorph;
		render: SVGCircleMorph;
		assert:  (renderer renderCount at: #renderEllipse ifAbsent: 0) equals: 1.
	
	