building
morphTestSVG

	|morph|
	morph := SVGMorph new
			bounds: self defaultSVGBounds;
			transform: self defaultTransform;
			yourself.
	morph renderer styleIn: morph fromSVGStyle: morph style.
	^ morph
	