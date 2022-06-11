test cases
circleTestCase

	^  SVGExportTestCase
		for:
'<svg width="200" height="200" version="1.1" xmlns="http://www.w3.org/2000/svg">
    <circle cx="30" cy="40" r="60" stroke="orange" fill="red" stroke-width="5"/>
</svg>'
		toBe:
'<svg height="200" version="1.1" width="200" xmlns="http://www.w3.org/2000/svg"><circle cx="30" cy="40" fill="#FF0000" r="60" stroke="#FFA500" stroke-width="5"/></svg>'