style
setDisplayVisibilityStyle: aBalloonStyle from: aSVGStyle

	(aSVGStyle includesKey: 'display')
		ifTrue: [aBalloonStyle at: 'display' put: ((aSVGStyle at: 'display') withBlanksTrimmed ~= 'none')]
		ifFalse: [(aBalloonStyle includesKey: 'display')
				ifFalse: [aBalloonStyle at: 'display' put: self defaultDisplay]].
	(aSVGStyle includesKey: 'visibility')
		ifTrue: [aBalloonStyle at: 'visibility' put: ((aSVGStyle at: 'visibility') withBlanksTrimmed = 'visible')]
		ifFalse: [(aBalloonStyle includesKey: 'visibility')
				ifFalse: [aBalloonStyle at: 'visibility' put: self defaultVisibility]].