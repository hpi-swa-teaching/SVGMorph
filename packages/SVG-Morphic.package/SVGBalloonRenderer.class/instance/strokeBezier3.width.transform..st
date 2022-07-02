helpers
strokeBezier3: points width: aNumber transform: aTransform

	 ^ self strokeBezier2: ((points groupsOf: 4 atATimeCollect: [:a :b :c :d | Bezier3Segment from: a via: b and: c to: d])
			gather: [:c | c asBezier2Points: aTransform compositeScale r reciprocal])
			width: aNumber
			transform: aTransform