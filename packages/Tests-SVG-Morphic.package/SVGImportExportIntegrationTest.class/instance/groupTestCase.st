test cases
groupTestCase

	^ SVGImportExportTestCase
		for: '<svg width="200" height="200" version="1.1" xmlns="http://www.w3.org/2000/svg">
			<g>
				<rect x="50" y="50" width="30" height="40" stroke="red" fill="yellow" stroke-width="5"/>
			</g>
		</svg>'
		toBe: '<svg height="200" version="1.1" width="200" xmlns="http://www.w3.org/2000/svg"><g><rect fill="#FFFF00" height="40" stroke="#FF0000" stroke-width="5" width="30" x="50" y="50"/></g></svg>'