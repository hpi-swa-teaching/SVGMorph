test cases
transformTranslateTestCase

	^ SVGImportExportTestCase
		for: '<svg width="200" height="200" version="1.1" xmlns="http://www.w3.org/2000/svg">
			<rect x="30" y="40" width="30" height="40" stroke="blue" fill="lime" stroke-width="5" transform="translate(-20 -30)"/>
		</svg>'
		toBe: '<svg height="200" version="1.1" width="200" xmlns="http://www.w3.org/2000/svg"><rect fill="#00FF00" height="40" stroke="#0000FF" stroke-width="5" transform="translate(-20,-30)" width="30" x="30" y="40"/></svg>'