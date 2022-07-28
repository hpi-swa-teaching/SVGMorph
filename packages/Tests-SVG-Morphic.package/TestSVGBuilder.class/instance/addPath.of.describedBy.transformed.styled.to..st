building
addPath: aString of: aCollectionOfSegments describedBy: anotherString transformed: aMatrixTransform2x3 styled: aDictionary to: aSVGCompositeMorph

	"ID, Collection of Line Segments, String for the d-Attribute, Transform, Styles"
	|path|
	path := SVGPathMorph new.
	aSVGCompositeMorph addMorph: path.
	path style addAll: aDictionary.
	(SVGStyleComposer newFrom: path composedStyle and: path style) styleIn.
	path segments addAll: aCollectionOfSegments.
	^ path
		id: aString;
		originalD: anotherString;
		transform: aMatrixTransform2x3;
		yourself