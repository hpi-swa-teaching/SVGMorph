tests
testSerializePolygonalPoints

	|points serializedPoints|
	points := OrderedCollection new.
	points 
		add: 1 @ 2;
		add: 4 @ 5;
		add: -12000 @ 999;
		add: 1234 @ 5678.
	
	serializedPoints := SVGExporter new generatePointString: points.
	
	self assert: '1,2 4,5 -12000,999 1234,5678' equals: serializedPoints