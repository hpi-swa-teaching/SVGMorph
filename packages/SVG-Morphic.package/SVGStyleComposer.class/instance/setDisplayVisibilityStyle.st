as yet unclassified
setDisplayVisibilityStyle

	(self svgStyle includesKey: 'display')
		ifTrue: [self balloonStyle at: 'display' put: ((self svgStyle at: 'display') withBlanksTrimmed ~= 'none')]
		ifFalse: [(self balloonStyle includesKey: 'display')
				ifFalse: [self balloonStyle at: 'display' put: self defaultDisplay]].
	(self svgStyle includesKey: 'visibility')
		ifTrue: [self balloonStyle at: 'visibility' put: ((self svgStyle at: 'visibility') withBlanksTrimmed = 'visible')]
		ifFalse: [(self balloonStyle includesKey: 'visibility')
				ifFalse: [self balloonStyle at: 'visibility' put: self defaultVisibility]].