styling
setFontStyle

	|textStyle|
	self addStyleAt: 'font-size' defaultValue: self defaultSVGTextSize.
	(self svgStyle includesKey: 'font-family')
		ifTrue: [textStyle := TextStyle named: (self svgStyle at: 'font-family').
				textStyle isNil ifTrue: [textStyle := TextStyle defaultSVGTextStyle].
				self balloonStyle at: 'font' put: (textStyle fontOfSize: (self balloonStyle at: 'font-size'))]
		ifFalse: [(self balloonStyle includesKey: 'font')
				ifFalse: [self balloonStyle at: 'font' put: (TextStyle defaultSVGFont)]].
	self addStyleAt: 'text-anchor' defaultValue: self defaultTextAnchor