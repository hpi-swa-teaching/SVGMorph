as yet unclassified
fullContainsPoint: aPoint

	(self fullBounds containsPoint: aPoint) ifFalse: [^ false].  "quick elimination"
	(self containsPoint: aPoint) ifTrue: [^ true].  "quick acceptance"
	^ false