as yet unclassified
rectangle
	|listOfRectangles|
	listOfRectangles := submorphs collect: [:sub | sub rectangle].
	listOfRectangles size == 0 ifTrue: [^ (Rectangle origin: 0@0 corner: 0@0)].
	^ (Rectangle merging: listOfRectangles).