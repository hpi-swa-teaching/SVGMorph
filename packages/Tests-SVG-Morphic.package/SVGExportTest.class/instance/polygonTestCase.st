test cases
polygonTestCase

	^ SVGExportTestCase 
		for: 
'<svg width="200" height="200" version="1.1" xmlns="http://www.w3.org/2000/svg">
    <polygon points="0,0 100,100 50,200 100,200"/>
</svg>'
		toBe: 
 '<svg height="200" version="1.1" width="200" xmlns="http://www.w3.org/2000/svg"><polygon points="0,0 100,100 50,200 100,200"/></svg>'