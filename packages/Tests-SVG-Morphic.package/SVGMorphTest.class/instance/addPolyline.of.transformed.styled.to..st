building
addPolyline: aString of: aCollectionOfPoints transformed: aMatrixTransform2x3 styled: aDictionary to: aSVGCompositeMorph

	|polyline|
	polyline := SVGPolylineMorph new.
	aSVGCompositeMorph addMorph: polyline.
	polyline style addAll: aDictionary.
	polyline renderer styleIn: polyline fromSVGStyle: polyline style.
	^ polyline
		id: aString;
		points: aCollectionOfPoints;
		transform: aMatrixTransform2x3;
		yourself