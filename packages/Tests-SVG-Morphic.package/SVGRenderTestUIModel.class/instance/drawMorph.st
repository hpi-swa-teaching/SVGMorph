helpers
drawMorph

	|svgMorph form canvas|
	svgMorph := SVGMorph fromString: self svgString.
	form := Form extent: svgMorph extent asPoint depth: 32.
	canvas := (BalloonCanvas on: form) copyOffset: svgMorph bounds origin negated asPoint.
	svgMorph fullDrawOn: canvas.
	
	self form: form