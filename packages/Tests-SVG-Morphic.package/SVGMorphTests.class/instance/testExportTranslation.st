exporting SVGs
testExportTranslation
	
	| morph exportedString |
	morph := SVGMorph fromString: self transformTranslateSVG.
	
	exportedString := SVGExporter new 
		visitSVGMorph: morph;
		exportString.
	self assert: self transformTranslateSVGExpected equals: exportedString