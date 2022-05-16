exporting SVGs
testExportEllipse
	
	| morph exportedString |
	morph := SVGMorph fromString: self ellipseTestSVG.
	
	exportedString := SVGExporter new 
		visitSVGMorph: morph;
		exportString.
	self assert: self ellipseTestSVGExpected equals: exportedString