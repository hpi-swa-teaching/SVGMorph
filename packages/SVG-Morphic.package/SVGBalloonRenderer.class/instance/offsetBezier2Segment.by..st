helpers
offsetBezier2Segment: segment by: aNumber

	|phi m rest result ts|
	
	result := OrderedCollection new.
	phi := 0.1.
	m := phi tan.
	rest := segment.
	
	[ts := 2. "TODO: split by angle"
	(ts between: 0 and: 1)
		ifTrue: [
			result addAll: (self basicOffsetBezier2Segment: (rest curveFrom: 0 to: ts) controlPoints by: aNumber).
			rest := rest curveFrom: ts to: 1.
			true]
		ifFalse: [false]]
		whileTrue.
	result addAll: (self basicOffsetBezier2Segment: rest controlPoints by: aNumber).
	
	^ result