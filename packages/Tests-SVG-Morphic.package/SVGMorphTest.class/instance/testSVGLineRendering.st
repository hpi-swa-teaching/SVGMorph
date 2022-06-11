testing - rendering
testSVGLineRendering

	|renderer|

	renderer := SVGRendererMock new.

	self
		wantsToTestLine;
		addRenderer: renderer on: SVGLineMorph;
		render: SVGLineMorph;
		assert:  (renderer renderCount at: #renderLine ifAbsent: 0) equals: 1.

