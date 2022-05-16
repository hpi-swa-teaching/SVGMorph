nil
containsPoint: aPoint
	self visible ifFalse:[^false].
	(self bounds containsPoint: aPoint) ifFalse: [^ false].
	(self rectangle containsPoint: (self transform globalPointToLocal: aPoint)) ifTrue: [^ true].
	^ false