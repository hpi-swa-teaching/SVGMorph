exporting SVGs
testExportSkewX
	
	| morph exportedString |
	morph := SVGMorph fromString: self transformSkewXSVG.
	
	exportedString := SVGExporter new 
		visitSVGMorph: morph;
		exportString.
	self assert: self transformSkewXSVGExpected equals: exportedString