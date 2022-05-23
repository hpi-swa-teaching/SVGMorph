as yet unclassified
containsPoint: aPoint 
	
	| semiMin semiMax center i lPoint |
	lPoint := self transform globalPointToLocal: aPoint.
	(self bounds containsPoint: aPoint) ifFalse: [^ false].
	semiMin := self rectangle width asFloat / 2 min: self rectangle height asFloat / 2.
	semiMax := self rectangle height asFloat / 2 max: self rectangle width asFloat / 2.
	center := self rectangle center.
	i := (((lPoint x - center x)squared asFloat) / (semiMax squared asFloat)) + (((lPoint y - center y)squared asFloat) / (semiMin squared asFloat)).
	^ i <= 1.