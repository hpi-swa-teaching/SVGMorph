building
addTextTestSVGTo: aSVGCompositeMorph

	|text|
	text := SVGTextMorph new.
	aSVGCompositeMorph addMorph: text.
	^ text
			text: self defaultText;
			location: self defaultLocation;
			transform: self defaultTransform;
			yourself