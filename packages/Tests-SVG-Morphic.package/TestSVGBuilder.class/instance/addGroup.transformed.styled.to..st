building
addGroup: aString transformed: aMatrixTransform2x3 styled: aDictionary to: aSVGCompositeMorph

	|group|
	group := SVGGroupMorph new.
	aSVGCompositeMorph addMorph: group.
	group style addAll: aDictionary.
SVGStyleComposer composeStyleFor: group with: group style.
	^ group
		id: aString;
		transform: aMatrixTransform2x3;
		yourself