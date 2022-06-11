test cases
polylineTestCase

	^ SVGExportTestCase
		for:
'<svg width="200" height="200" version="1.1" xmlns="http://www.w3.org/2000/svg">
    <polyline stroke="red" stroke-width="5px" fill="transparent" points="0,0 100,100 50,200 100,200"/>
</svg>'
		toBe:
 '<svg height="200" version="1.1" width="200" xmlns="http://www.w3.org/2000/svg"><polyline fill="#00000000" points="0,0 100,100 50,200 100,200" stroke="#FF0000" stroke-width="5"/></svg>'