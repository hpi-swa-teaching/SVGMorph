building
addPolygon: aString of: aCollectionOfPoints transformed: aMatrixTransform2x3 styled: aDictionary to: aSVGCompositeMorph

	|polygon|
	polygon := SVGPolygonMorph new.
	aSVGCompositeMorph addMorph: polygon.
	polygon style addAll: aDictionary.
	(SVGStyleComposer newFrom: polygon composedStyle and: polygon style) styleIn.
	^ polygon
		id: aString;
		points: aCollectionOfPoints;
		transform: aMatrixTransform2x3;
		yourself