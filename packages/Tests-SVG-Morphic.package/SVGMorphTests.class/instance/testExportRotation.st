exporting SVGs
testExportRotation
	
	| morph exportedString |
	morph := SVGMorph fromString: self rotatedRectangleTestSVG.
	
	exportedString := SVGExporter new 
		visitSVGMorph: morph;
		exportString.
	self assert: self rotatedRectangleTestSVGExpected equals: exportedString