exporting SVGs
testExportRectangle
	
	| morph exportedString |
	morph := SVGMorph fromString: self RectangleYellowFillRedStroke.
	
	exportedString := SVGExporter new 
		visitSVGMorph: morph;
		exportString.
	self assert: self RectangleYellowFillRedStrokeExpected equals: exportedString