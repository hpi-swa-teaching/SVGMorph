styling
addStyleAt: aKey defaultValue: aValue 

	(self svgStyle includesKey: aKey)
				ifTrue: [self balloonStyle at: aKey put: (self svgStyle at: aKey).]
				ifFalse: [(self balloonStyle includesKey: aKey)
						ifFalse: [self balloonStyle at: aKey put: aValue]].