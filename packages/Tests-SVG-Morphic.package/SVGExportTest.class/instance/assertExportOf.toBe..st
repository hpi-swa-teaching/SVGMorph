assertions
assertExportOf: anXMLString toBe: anotherXMLString

	|morph exporter|
	morph := SVGMorph fromString: anXMLString.

	exporter := SVGExporter new
		visitSVGMorph: morph;
		yourself.
	self assert: anotherXMLString equals: (exporter exportString)