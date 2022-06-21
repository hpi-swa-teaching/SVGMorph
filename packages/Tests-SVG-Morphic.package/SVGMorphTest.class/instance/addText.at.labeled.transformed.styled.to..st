building
addText: aString at: aPoint labeled: anotherString transformed: aMatrixTransform2x3 styled: aDictionary to: aSVGCompositeMorph

	|text|
	text := SVGTextMorph new.
	aSVGCompositeMorph addMorph: text.
	text style addAll: aDictionary.
	text renderer styleIn: text fromSVGStyle: text style.
	^ text
		id: aString;
		location: aPoint;
		text: anotherString;
		transform: aMatrixTransform2x3;
		yourself