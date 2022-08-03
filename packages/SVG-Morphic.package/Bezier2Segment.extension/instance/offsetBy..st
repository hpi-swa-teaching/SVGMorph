*SVG-Morphic
offsetBy: aNumber

	|n1 n2 n|

	n1 := (self via - self start) normal.
	n2 := (self end - self via) normal.
	n := n1 + n2.

	^ self class
		from: self start + (aNumber * n1)
		via:  self via + (2 * aNumber * n / (n dotProduct: n))
		to:  self end + (aNumber * n2)