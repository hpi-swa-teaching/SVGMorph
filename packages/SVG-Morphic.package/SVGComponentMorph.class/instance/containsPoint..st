nil
containsPoint: aPoint
	self visible ifFalse:[^false].
	(self bounds containsPoint: aPoint) ifFalse: [^ false].
	^ true