building
addTSpan: aString at: aPoint labeled: anotherString transformed: aMatrixTransform2x3 styled: aDictionary to: aSVGTextMorph

	|tSpan|
	tSpan := SVGTSpanMorph new.
	aSVGTextMorph addMorph: tSpan.
	tSpan style addAll: aDictionary.
 	(SVGStyleComposer newFrom: tSpan composedStyle and: tSpan style) styleIn.
	^ tSpan
		id: aString;
		location: aPoint;
		text: anotherString;
		transform: aMatrixTransform2x3;
		yourself