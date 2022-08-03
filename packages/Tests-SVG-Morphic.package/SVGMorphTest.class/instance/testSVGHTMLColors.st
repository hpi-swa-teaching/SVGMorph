testing - properties
testSVGHTMLColors

	|morph|

	self wantsToTestHTMLColors.
	morph := self subject findByClass: SVGRectMorph.

	self
		assert: (Color fromString: '#FFFF0066') equals: (morph composedStyle at: 'fill');
		assert: (Color fromString: '#FF0000FF') equals: (morph composedStyle at: 'stroke')