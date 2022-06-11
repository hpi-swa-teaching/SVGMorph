test cases
ellipseTestCase

	^ SVGExportTestCase
		for:
'<svg height="200" version="1.1" width="200" xmlns="http://www.w3.org/2000/svg">
		<ellipse fill="#FF00FF" stroke="#00FFFF" stroke-width="5" rx="20" ry="50" cx="100" cy="120" />
</svg>'
		toBe:
'<svg height="200" version="1.1" width="200" xmlns="http://www.w3.org/2000/svg"><ellipse cx="100" cy="120" fill="#FF00FF" rx="20" ry="50" stroke="#00FFFF" stroke-width="5"/></svg>'