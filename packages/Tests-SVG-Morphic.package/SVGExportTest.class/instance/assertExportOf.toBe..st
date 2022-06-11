assertions
assertExportOf: anXMLString toBe: anotherXMLString

	|morph exportedString|
	morph := SVGMorph fromString: anXMLString.

	exportedString := SVGExporter new
		visitSVGMorph: morph;
		exportString.
	self assert: anotherXMLString equals: exportedString