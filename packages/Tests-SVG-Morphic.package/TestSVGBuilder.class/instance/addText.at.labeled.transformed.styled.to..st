building
addText: aString at: aPoint labeled: anotherString transformed: aMatrixTransform2x3 styled: aDictionary to: aSVGCompositeMorph

	|text|
	text := SVGTextMorph new.
	aSVGCompositeMorph addMorph: text.
	text style addAll: aDictionary.
	(SVGStyleComposer newFrom: text composedStyle and: text style) styleIn.
	^ text
		id: aString;
		location: aPoint;
		text: anotherString;
		transform: aMatrixTransform2x3;
		yourself