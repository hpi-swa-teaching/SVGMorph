exporting SVGs
testExportLine
	
	| morph exportedString |
	morph := SVGMorph fromString: self lineTestSVG.
	
	exportedString := SVGExporter new 
		visitSVGMorph: morph;
		exportString.
	self assert: self lineTestSVGExpected equals: exportedString