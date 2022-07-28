as yet unclassified
setFillStyle: aBalloonStyle from: aSVGStyle

	| regenFill |	
	regenFill := false.

	(aSVGStyle includesKey: 'opacity')
			ifTrue: [aBalloonStyle at: 'opacity' put: (aSVGStyle at: 'opacity').
					regenFill := true]
			ifFalse: [(aBalloonStyle includesKey: 'opacity')
					ifFalse: [aBalloonStyle at: 'opacity' put: self defaultOpacity]].
		(aSVGStyle includesKey: 'fill-opacity')
			ifTrue: [aBalloonStyle at: 'fill-opacity' put: (aSVGStyle at: 'fill-opacity').
					regenFill := true]
			ifFalse: [(aBalloonStyle includesKey: 'fill-opacity')
					ifFalse: [aBalloonStyle at: 'fill-opacity' put: self defaultFillOpacity]].
		(aSVGStyle includesKey: 'fill')
			ifTrue: [aBalloonStyle at: 'fill' put: (aSVGStyle at: 'fill').
					regenFill := true]
			ifFalse: [(aBalloonStyle includesKey: 'fill')
							ifFalse: [aBalloonStyle at: 'fill' put: self defaultFill]].
		regenFill
			ifTrue: [aBalloonStyle at: 'fill' put: ((aBalloonStyle at: 'fill')
						alphaMixed: (aBalloonStyle at: 'fill-opacity') * (aBalloonStyle at: 'opacity'))].
		(aSVGStyle includesKey: 'fill-rule')
			ifTrue: [aBalloonStyle at: 'fill-rule' put: (aSVGStyle at: 'fill-rule')]
			ifFalse: [(aBalloonStyle includesKey: 'fill-rule')
					ifFalse: [aBalloonStyle at: 'fill-rule' put: self defaultFillRule]].