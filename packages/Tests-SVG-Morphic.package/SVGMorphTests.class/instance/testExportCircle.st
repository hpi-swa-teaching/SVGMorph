exporting SVGs
testExportCircle
	
	| morph exportedString |
	morph := SVGMorph fromString: self circleTestSVG.
	
	exportedString := SVGExporter new 
		visitSVGMorph: morph;
		exportString.
	self assert: self circleTestSVGExpected equals: exportedString