exporting SVGs
testExportSkewY
	
	| morph exportedString |
	morph := SVGMorph fromString: self transformSkewYSVG.
	
	exportedString := SVGExporter new 
		visitSVGMorph: morph;
		exportString.
	self assert: self transformSkewYSVGExpected equals: exportedString