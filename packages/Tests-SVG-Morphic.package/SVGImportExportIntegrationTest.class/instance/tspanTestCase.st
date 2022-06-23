test cases
tspanTestCase

	^ SVGImportExportTestCase
		for: '<svg height="200" version="1.1" width="200" xmlns="http://www.w3.org/2000/svg">
			<text x="20" y="30">
				<tspan>Hallo Welt!</tspan>
			</text>
		</svg>'
		toBe: '<svg height="200" version="1.1" width="200" xmlns="http://www.w3.org/2000/svg"><text x="20" y="30"><tspan>Hallo Welt!</tspan></text></svg>'