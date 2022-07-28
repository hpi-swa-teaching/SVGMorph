building
createTestSVG: aString bounded: aRect transformed: aMatrixTransform2x3 styled: aDictionary

	|morph|
	morph := SVGMorph new
		id: aString;
		bounds: aRect;
		viewBox: (aRect origin x asString , ' ' , aRect origin y asString , ' ' , aRect width asString , ' ' , aRect height asString);
		transform: aMatrixTransform2x3;
		yourself.
	morph style addAll: aDictionary.
	(SVGStyleComposer newFrom: morph composedStyle and: morph style)	styleIn.
	^ morph