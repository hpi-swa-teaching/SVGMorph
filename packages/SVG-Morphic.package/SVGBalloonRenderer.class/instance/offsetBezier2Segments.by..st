helpers
offsetBezier2Segments: points by: aNumber

	^ self stitchBezier2Segments: ((points groupsOf: 3 atATimeCollect: [:a :b :c | Bezier2Segment from: a via: b to: c])
		gather: [:curve | self offsetBezier2Segment: curve by: aNumber])