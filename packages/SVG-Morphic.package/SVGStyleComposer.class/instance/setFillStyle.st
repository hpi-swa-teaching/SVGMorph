as yet unclassified
setFillStyle

	| regenFill |	
	regenFill := false.

	(self svgStyle includesKey: 'opacity')
			ifTrue: [self balloonStyle at: 'opacity' put: (self svgStyle at: 'opacity').
					regenFill := true]
			ifFalse: [(self balloonStyle includesKey: 'opacity')
					ifFalse: [self balloonStyle at: 'opacity' put: self defaultOpacity]].
		(self svgStyle includesKey: 'fill-opacity')
			ifTrue: [self balloonStyle at: 'fill-opacity' put: (self svgStyle at: 'fill-opacity').
					regenFill := true]
			ifFalse: [(self balloonStyle includesKey: 'fill-opacity')
					ifFalse: [self balloonStyle at: 'fill-opacity' put: self defaultFillOpacity]].
		(self svgStyle includesKey: 'fill')
			ifTrue: [self balloonStyle at: 'fill' put: (self svgStyle at: 'fill').
					regenFill := true]
			ifFalse: [(self balloonStyle includesKey: 'fill')
							ifFalse: [self balloonStyle at: 'fill' put: self defaultFill]].
		regenFill
			ifTrue: [self balloonStyle at: 'fill' put: ((self balloonStyle at: 'fill')
						alphaMixed: (self balloonStyle at: 'fill-opacity') * (self balloonStyle at: 'opacity'))].
		(self svgStyle includesKey: 'fill-rule')
			ifTrue: [self balloonStyle at: 'fill-rule' put: (self svgStyle at: 'fill-rule')]
			ifFalse: [(self balloonStyle includesKey: 'fill-rule')
					ifFalse: [self balloonStyle at: 'fill-rule' put: self defaultFillRule]].