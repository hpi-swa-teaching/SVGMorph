helpers
testRender: aString errorRate: aNumber

	|svgMorph form canvas reference errors maxErrors|

	svgMorph := self perform: (aString , 'SVG') asSymbol.
	form := Form extent: svgMorph extent asPoint depth: 32.
	canvas := (BalloonCanvas on: form) copyOffset: svgMorph bounds origin negated asPoint.
	svgMorph fullDrawOn: canvas.

	reference := self readForm: (aString , 'PNG').
	maxErrors := form boundingBox area * 4 * 255.
	errors := form pixelCompare: form boundingBox with: reference at: 0@0.
	self assert: (errors <= (maxErrors * aNumber))
