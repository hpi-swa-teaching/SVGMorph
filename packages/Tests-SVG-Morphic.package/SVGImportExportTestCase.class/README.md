A SVGExportTestCase is a combination of two SVG XML strings to perform integration testing of SVG import and export.

Instance Variables
	expected:		<String>
	input:		<String>

expected
	- The XML which is the expected output when importing the String input as SVG and exporting it again
	- The expected string may differ from the input:
	    - Some information could be expressed in several ways (e.g. colors by name or by their hex code)
	    - The order of attributes does not matter

input
	- The XML representation of the SVG to be tested