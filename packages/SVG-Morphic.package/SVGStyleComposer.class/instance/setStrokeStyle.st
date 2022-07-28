as yet unclassified
setStrokeStyle

	(self svgStyle includesKey: 'stroke-width')
			ifTrue: [self balloonStyle at: 'stroke-width' put: (self svgStyle at: 'stroke-width')]
			ifFalse: [(self balloonStyle includesKey: 'stroke-width')
					ifFalse: [self balloonStyle at: 'stroke-width' put: self defaultStrokeWidth]].
		(self svgStyle includesKey: 'stroke-linecap')
			ifTrue: [self balloonStyle at: 'stroke-linecap' put: (self svgStyle at: 'stroke-linecap')]
			ifFalse: [(self balloonStyle includesKey: 'stroke-linecap')
					ifFalse: [self balloonStyle at: 'stroke-linecap' put: self defaultStrokeLinecap]].
		(self svgStyle includesKey: 'stroke-opacity')
			ifTrue: [self balloonStyle at: 'stroke-opacity' put: (self svgStyle at: 'stroke-opacity')]
			ifFalse: [(self balloonStyle includesKey: 'stroke-opacity')
					ifFalse: [self balloonStyle at: 'stroke-opacity' put: self defaultStrokeOpacity]].
		(self svgStyle includesKey: 'stroke')
			ifTrue: [self balloonStyle at: 'stroke' put: ((self svgStyle at: 'stroke')
					alphaMixed: (self balloonStyle at: 'stroke-opacity') * (self balloonStyle at: 'opacity'))]
			ifFalse: [(self balloonStyle includesKey: 'stroke')
					ifFalse: [self balloonStyle at: 'stroke' put: self defaultStroke]].