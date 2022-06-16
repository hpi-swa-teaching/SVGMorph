building
addGroupTestSVGTo: aSVGCompositeMorph

	|group|
	group := SVGGroupMorph new.
	aSVGCompositeMorph addMorph: group.
	^ group