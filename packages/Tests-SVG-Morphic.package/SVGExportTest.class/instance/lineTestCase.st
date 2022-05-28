test cases
lineTestCase

	^ SVGExportTestCase 
		for: 
'<svg height="200" version="1.1" width="200" xmlns="http://www.w3.org/2000/svg">
    <line x1="20" y1="30" x2="100" y2="170" stroke="#FF0000" stroke-width="20"/>
</svg>'
		toBe: 
'<svg height="200" version="1.1" width="200" xmlns="http://www.w3.org/2000/svg"><line stroke="#FF0000" stroke-width="20" x1="20" x2="100" y1="30" y2="170"/></svg>'