exporting SVGs
testExportHeightWidth
	
	| morph exportedString |
	morph := SVGMorph fromString: self widthHeightTestSVG.
	
	exportedString := SVGExporter new 
		visitSVGMorph: morph;
		exportString.
	self assert: (self widthHeightTestSVGExpected) equals: exportedString