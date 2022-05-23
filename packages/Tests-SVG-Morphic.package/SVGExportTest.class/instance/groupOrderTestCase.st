test cases
groupOrderTestCase
	
	^ SVGExportTestCase 
		for:
'<svg width="200" height="200" version="1.1" xmlns="http://www.w3.org/2000/svg">
        <g>
            <rect x="50" y="50" width="30" height="40" stroke="red" fill="yellow" stroke-width="5"/>
            <rect x="60" y="60" width="40" height="30" stroke="blue" fill="green" stroke-width="5"/>
        </g>
</svg>'
		toBe: 
'<svg height="200" version="1.1" width="200" xmlns="http://www.w3.org/2000/svg">
<g>
<rect fill="#FFFF00" height="40" stroke="#FF0000" stroke-width="5" width="30" x="50" y="50"/> 
<rect fill="#008000" height="30" stroke="#0000FF" stroke-width="5" width="40" x="60" y="60"/> </g></svg>'