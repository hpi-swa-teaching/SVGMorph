A SVGExportTest is a collection of test methods that test the SVG rendering.
How to create a test:
	- create a method myNewTestSVG
	- check the rendering by doing SVGRenderTest showSVG: 'myNewTest'.
	- if it is rendered correctly, do SVGRenderTest trustMeThisLooksGood: 'myNewTest'.
	- create a new test that sends self testRender: 'myNewTest' errorRate: 1e-5.
	- adjust the error rate if necessary 

Instance Variables
	builder:		<TestSVGBuilder>

builder
	- The builder used to create the SVGs that should be rendered.