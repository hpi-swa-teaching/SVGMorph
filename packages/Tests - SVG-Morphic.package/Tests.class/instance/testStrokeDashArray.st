as yet unclassified
testStrokeDashArray
	" Stroke-Dasharray is not yet supported by SVGMorph"
	self assert: (testMorph_stroke style at: 'stroke-dasharray') equals: '5,10,5'.