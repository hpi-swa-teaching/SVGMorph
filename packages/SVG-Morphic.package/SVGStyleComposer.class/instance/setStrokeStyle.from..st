as yet unclassified
setStrokeStyle: aBalloonStyle from: aSVGStyle

	(aSVGStyle includesKey: 'stroke-width')
			ifTrue: [aBalloonStyle at: 'stroke-width' put: (aSVGStyle at: 'stroke-width')]
			ifFalse: [(aBalloonStyle includesKey: 'stroke-width')
					ifFalse: [aBalloonStyle at: 'stroke-width' put: self defaultStrokeWidth]].
		(aSVGStyle includesKey: 'stroke-linecap')
			ifTrue: [aBalloonStyle at: 'stroke-linecap' put: (aSVGStyle at: 'stroke-linecap')]
			ifFalse: [(aBalloonStyle includesKey: 'stroke-linecap')
					ifFalse: [aBalloonStyle at: 'stroke-linecap' put: self defaultStrokeLinecap]].
		(aSVGStyle includesKey: 'stroke-opacity')
			ifTrue: [aBalloonStyle at: 'stroke-opacity' put: (aSVGStyle at: 'stroke-opacity')]
			ifFalse: [(aBalloonStyle includesKey: 'stroke-opacity')
					ifFalse: [aBalloonStyle at: 'stroke-opacity' put: self defaultStrokeOpacity]].
		(aSVGStyle includesKey: 'stroke')
			ifTrue: [aBalloonStyle at: 'stroke' put: ((aSVGStyle at: 'stroke')
					alphaMixed: (aBalloonStyle at: 'stroke-opacity') * (aBalloonStyle at: 'opacity'))]
			ifFalse: [(aBalloonStyle includesKey: 'stroke')
					ifFalse: [aBalloonStyle at: 'stroke' put: self defaultStroke]].