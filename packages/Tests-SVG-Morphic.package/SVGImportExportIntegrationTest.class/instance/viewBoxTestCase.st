test cases
viewBoxTestCase

	^ SVGImportExportTestCase
		for: '<svg height="40mm" stroke-width="2" version="1.1" viewBox="-12 -34 56 78" height="50mm" xmlns="http://www.w3.org/2000/svg"></svg>'
		toBe: '<svg height="50mm" stroke-width="2" version="1.1" viewBox="-12 -34 56 78" xmlns="http://www.w3.org/2000/svg"/>'