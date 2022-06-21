building
addRectangle: aString at: aPoint sized: anotherPoint transformed: aMatrixTransform2x3 styled: aDictionary to: aSVGCompositeMorph

	|rect|
	rect := SVGRectMorph new.
	aSVGCompositeMorph addMorph: rect.
	rect style addAll: aDictionary.
	rect renderer styleIn: rect fromSVGStyle: rect style.
	^ rect
		id: aString;
		rectangle: (aPoint extent: anotherPoint);
		transform: aMatrixTransform2x3;
		yourself