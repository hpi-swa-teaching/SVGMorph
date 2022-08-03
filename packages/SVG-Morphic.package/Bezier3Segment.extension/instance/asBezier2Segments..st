*SVG-Morphic
asBezier2Segments: pixelError

	^ (self asBezier2Points: pixelError)
		groupsOf: 3 atATimeCollect: [:a :b :c | Bezier2Segment controlPoints: {a . b . c}]