building
addLine: aString from: aPoint to: anotherPoint transformed: aMatrixTransform2x3 styled: aDictionary to: aSVGCompositeMorph

	|line|
	line := SVGLineMorph new.
	aSVGCompositeMorph addMorph: line.
	line style addAll: aDictionary.
SVGStyleComposer composeStyleFor: line with: line style.
	^ line
		id: aString;
		rectangle: (aPoint corner: anotherPoint);
		transform: aMatrixTransform2x3;
		yourself