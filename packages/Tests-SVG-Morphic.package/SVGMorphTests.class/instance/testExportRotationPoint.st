exporting SVGs
testExportRotationPoint
	
	| morph exportedString |
	morph := SVGMorph fromString: self transformRotatePointSVG.
	
	exportedString := SVGExporter new 
		visitSVGMorph: morph;
		exportString.
	self assert: self transformRotatePointSVGExpected equals: exportedString