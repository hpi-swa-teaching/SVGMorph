test cases
pathTestCase

	^  SVGExportTestCase 
		for: 
'<svg width="200" height="200" version="1.1" xmlns="http://www.w3.org/2000/svg">
    <path d="M 10,30 A 20,20 0,0,1 50,30 A 20,20 0,0,1 90,30 Q 90,60 50,90 Q 10,60 10,30 z"/>
</svg>'
		toBe:
'<svg height="200" version="1.1" width="200" xmlns="http://www.w3.org/2000/svg">
<path d="M 10,30 A 20,20 0,0,1 50,30 A 20,20 0,0,1 90,30 Q 90,60 50,90 Q 10,60 10,30 z"/> </svg>'