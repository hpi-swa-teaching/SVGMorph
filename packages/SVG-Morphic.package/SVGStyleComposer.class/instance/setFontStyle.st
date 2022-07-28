as yet unclassified
setFontStyle

	| textStyle|
	(self svgStyle includesKey: 'font-size')
		ifTrue: [self balloonStyle at: 'font-size' put: (self svgStyle at: 'font-size')]
		ifFalse: [(self balloonStyle includesKey: 'font-size')
				ifFalse: [self balloonStyle at: 'font-size' put: self defaultSVGTextSize]].
	(self svgStyle includesKey: 'font-family')
		ifTrue: [textStyle := TextStyle named: (self svgStyle at: 'font-family').
				textStyle isNil ifTrue: [textStyle := TextStyle defaultSVGTextStyle].
				self balloonStyle at: 'font' put: (textStyle fontOfSize: (self balloonStyle at: 'font-size'))]
		ifFalse: [(self balloonStyle includesKey: 'font')
				ifFalse: [self balloonStyle at: 'font' put: (TextStyle defaultSVGFont)]].
	(self svgStyle includesKey: 'text-anchor')
		ifTrue: [self balloonStyle at: 'text-anchor' put: (self svgStyle at: 'text-anchor')]
		ifFalse: [(self balloonStyle includesKey: 'text-anchor')
				ifFalse: [self balloonStyle at: 'text-anchor' put: self defaultTextAnchor]]