exporting SVGs
testExportScaling
	
	| morph exportedString |
	morph := SVGMorph fromString: self transformScaleSVG.
	
	exportedString := SVGExporter new 
		visitSVGMorph: morph;
		exportString.
	self assert: self transformScaleSVGExpected equals: exportedString