building
addEllipse: aString at: aPoint sized: anotherPoint transformed: aMatrixTransform2x3 styled: aDictionary to: aSVGCompositeMorph

	|ellipse|
	ellipse := SVGEllipseMorph new.
	aSVGCompositeMorph addMorph: ellipse.
	ellipse style addAll: aDictionary.
SVGStyleComposer composeStyleFor: ellipse with: ellipse style.
	^ ellipse
		id: aString;
		rectangle: (anotherPoint center: aPoint);
		transform: aMatrixTransform2x3;
		yourself