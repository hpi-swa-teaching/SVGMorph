building
addTSpanTestSVGTo: aSVGTextMorph

	|tSpan|
	tSpan := SVGTSpanMorph new.
	aSVGTextMorph addMorph: tSpan.
	^ tSpan
			text: self defaultText;
			location: tSpan owner location;
			transform: self defaultTransform;
			yourself