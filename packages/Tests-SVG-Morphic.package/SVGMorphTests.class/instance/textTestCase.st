exporting SVGs - resources
textTestCase

	^ SVGExportTestCase 
		for:
'<svg height="200" version="1.1" width="200" xmlns="http://www.w3.org/2000/svg">
    <text x="20" y="30">Test</text>'
		toBe:
'<svg height="200" version="1.1" width="200" xmlns="http://www.w3.org/2000/svg">
<text x="20" y="30">Test</text></svg>'