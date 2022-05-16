exporting SVGs
testExportGroups
	
	| morph exportedString |
	morph := SVGMorph fromString: self groupTestSVG.
	
	exportedString := SVGExporter new 
		visitSVGMorph: morph;
		exportString.
	self assert: self groupTestSVGExpected equals: exportedString