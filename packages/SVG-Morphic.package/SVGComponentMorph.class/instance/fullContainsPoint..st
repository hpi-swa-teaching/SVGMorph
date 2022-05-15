nil
fullContainsPoint: aPoint
	self visible ifFalse:[^false].
	(self fullBounds containsPoint: aPoint) ifFalse:[^false].
	(self containsPoint: aPoint) ifTrue:[^true].
	^false