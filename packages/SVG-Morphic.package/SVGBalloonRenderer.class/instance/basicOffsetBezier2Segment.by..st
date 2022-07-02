helpers
basicOffsetBezier2Segment: points by: aNumber

	|n1 n2 n|
	
	n1 := (points second - points first) normal.
	n2 := (points third - points second) normal.
	n := n1 + n2.
	
	^ { points first + (aNumber * n1)
		. points second + (2 * aNumber * n / (n dotProduct: n))
		. points third + (aNumber * n2) }