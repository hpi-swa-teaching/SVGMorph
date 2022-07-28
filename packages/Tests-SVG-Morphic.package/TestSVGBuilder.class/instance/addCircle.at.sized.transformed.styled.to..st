building
addCircle: aString at: aPoint sized: anInteger transformed: aMatrixTransform2x3 styled: aDictionary to: aSVGCompositeMorph

	|circle|
	circle := SVGCircleMorph new.
	aSVGCompositeMorph addMorph: circle.
	circle style addAll: aDictionary.
	SVGStyleComposer composeStyleFor: circle with: circle style.
	^ circle
		id: aString;
		rectangle: ((anInteger * 2) asPoint center: aPoint);
		transform: aMatrixTransform2x3;
		yourself