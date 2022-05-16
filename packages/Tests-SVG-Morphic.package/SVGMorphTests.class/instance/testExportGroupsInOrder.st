exporting SVGs
testExportGroupsInOrder
	
	| morph exportedString |
	morph := SVGMorph fromString: self groupOrderTestSVG.
	
	exportedString := SVGExporter new 
		visitSVGMorph: morph;
		exportString.
	self assert: self groupOrderTestSVGExpected equals: exportedString