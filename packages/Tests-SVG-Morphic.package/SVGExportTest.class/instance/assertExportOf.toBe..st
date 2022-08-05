assertions
assertExportOf: aSVGMorph toBe: anXMLString

	|exporter|
	exporter := SVGExporter new
		visitSVGMorph: aSVGMorph;
		yourself.
	self assert: anXMLString equals: (exporter exportString)