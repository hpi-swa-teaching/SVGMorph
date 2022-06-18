helpers
circleAt: c r: r


	| pcdist n angle d pts  start end|
	n := 100.
	
	pcdist := 4 / 3 * ((90 / n) degreeTan).
	d := 0 @ pcdist.
	angle := 360 / n.
	
	pts := OrderedCollection new.
	(1 to: 361 by: angle)
		overlappingPairsDo: [:a1 :a2 |
			start := 1 @ 0 rotateBy: a1 degreesToRadians about: 0@0.
			end := 1 @ 0 rotateBy: a2 degreesToRadians about: 0@0.
			pts addAll: {
				start .
				start + (d negated rotateBy: a1 degreesToRadians about: 0@0) .
				end + (d rotateBy: a2 degreesToRadians about: 0@0) .
				end
			}
		].
	^ (pts collect: [:p | p * r + c])  