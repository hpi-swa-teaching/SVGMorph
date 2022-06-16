building
addLineTestSVGTo: aSVGCompositeMorph

	|line|
	line := SVGLineMorph new.
	aSVGCompositeMorph addMorph: line.
	line
			rectangle: self defaultLineRectangle;
			transform: self defaultTransform.
	line style
			at: 'stroke' put: self defaultStrokeColor;
			at: 'stroke-width' put: self defaultStrokeWidth.
	^ line