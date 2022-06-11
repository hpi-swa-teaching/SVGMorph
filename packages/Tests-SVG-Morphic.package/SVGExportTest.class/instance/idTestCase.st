test cases
idTestCase

	^ SVGExportTestCase
		for:
'<svg width="123" height="456" version="1.1" xmlns="http://www.w3.org/2000/svg"><g id="someRandomId"></g></svg>'
		toBe:
'<svg height="456" version="1.1" width="123" xmlns="http://www.w3.org/2000/svg"><g id="someRandomId"/></svg>'