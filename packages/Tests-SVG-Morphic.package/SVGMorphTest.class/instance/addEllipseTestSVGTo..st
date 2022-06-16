building
addEllipseTestSVGTo: aSVGCompositeMorph

	|ellipse|
	ellipse := SVGEllipseMorph new.
	aSVGCompositeMorph addMorph: ellipse.
	^ ellipse
			rectangle: self defaultEllipseRectangle;
			transform: self defaultTransform;
			yourself