helpers
trustMeThisLooksGood: aString

	|svgMorph form canvas|
	
	svgMorph := self perform: (aString , 'SVG') asSymbol.
	form := Form extent: svgMorph extent asPoint depth: 32.
	canvas := (BalloonCanvas on: form) copyOffset: svgMorph bounds origin negated asPoint.
	svgMorph fullDrawOn: canvas.
	
	self saveForm: form as: (aString , 'PNG')