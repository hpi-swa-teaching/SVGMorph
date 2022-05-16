exporting SVGs
testExportId
	
	| morph exportedString |
	morph := SVGMorph fromString: self idTestSVG.
	
	exportedString := SVGExporter new 
		visitSVGMorph: morph;
		exportString.
	self assert: self idTestSVGExpected equals: exportedString