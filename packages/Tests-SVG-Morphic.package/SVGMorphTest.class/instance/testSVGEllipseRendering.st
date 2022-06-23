testing - rendering
testSVGEllipseRendering

	|renderer|

	renderer := SVGRendererMock new.

	self
		wantsToTestEllipse;
		addRenderer: renderer on: SVGEllipseMorph;
		render: SVGEllipseMorph;
		assert: (renderer renderCount at: #renderEllipse ifAbsent: 0) equals: 1.