exporting SVGs
testExportText
	
	| morph exportedString |
	morph := SVGMorph fromString: self textTestSVG.
	
	exportedString := SVGExporter new 
		visitSVGMorph: morph;
		exportString.
	self assert: self textTestSVGExpected equals: exportedString