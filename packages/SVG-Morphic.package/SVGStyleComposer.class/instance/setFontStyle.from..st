as yet unclassified
setFontStyle: aBalloonStyle from: aSVGStyle

	| textStyle|
	(aSVGStyle includesKey: 'font-size')
		ifTrue: [aBalloonStyle at: 'font-size' put: (aSVGStyle at: 'font-size')]
		ifFalse: [(aBalloonStyle includesKey: 'font-size')
				ifFalse: [aBalloonStyle at: 'font-size' put: self defaultSVGTextSize]].
	(aSVGStyle includesKey: 'font-family')
		ifTrue: [textStyle := TextStyle named: (aSVGStyle at: 'font-family').
				textStyle isNil ifTrue: [textStyle := TextStyle defaultSVGTextStyle].
				aBalloonStyle at: 'font' put: (textStyle fontOfSize: (aBalloonStyle at: 'font-size'))]
		ifFalse: [(aBalloonStyle includesKey: 'font')
				ifFalse: [aBalloonStyle at: 'font' put: (TextStyle defaultSVGFont)]].
	(aSVGStyle includesKey: 'text-anchor')
		ifTrue: [aBalloonStyle at: 'text-anchor' put: (aSVGStyle at: 'text-anchor')]
		ifFalse: [(aBalloonStyle includesKey: 'text-anchor')
				ifFalse: [aBalloonStyle at: 'text-anchor' put: self defaultTextAnchor]]