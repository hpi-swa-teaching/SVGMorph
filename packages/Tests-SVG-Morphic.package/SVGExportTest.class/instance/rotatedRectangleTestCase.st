test cases
rotatedRectangleTestCase

	^ SVGExportTestCase 
		for:
'<svg width="200" height="200" version="1.1" xmlns="http://www.w3.org/2000/svg">
        <rect x="120" y="-40" width="30" height="40" stroke="red" fill="yellow" stroke-width="5" transform="rotate(45)"/>
    </svg>'
		toBe: 
'<svg height="200" version="1.1" width="200" xmlns="http://www.w3.org/2000/svg"><rect fill="#FFFF00" height="40" stroke="#FF0000" stroke-width="5" transform="rotate(45)" width="30" x="120" y="-40"/></svg>'