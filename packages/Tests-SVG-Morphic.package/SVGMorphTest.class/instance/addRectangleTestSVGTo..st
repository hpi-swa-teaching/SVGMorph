building
addRectangleTestSVGTo: aSVGCompositeMorph

	|rect|
	rect := SVGRectMorph new.
	aSVGCompositeMorph addMorph: rect.
	^ rect
			rectangle: self defaultRectRectangle;
			transform: self defaultTransform;
			yourself