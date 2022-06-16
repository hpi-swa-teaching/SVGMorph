building
addCircleTestSVGTo: aSVGCompositeMorph

	|circle|
	circle := SVGCircleMorph new.
	aSVGCompositeMorph addMorph: circle.
	^ circle
			rectangle: self defaultCircleRectangle;
			transform: self defaultTransform;
			yourself