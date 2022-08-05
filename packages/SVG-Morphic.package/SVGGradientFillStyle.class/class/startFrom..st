attribute parsing
startFrom: anElement

	|x y|
	
	x := (anElement attributeAt: 'x1' ifAbsent: self defaultStart x) asSVGNumberOrPercentage.
	y := (anElement attributeAt: 'y1' ifAbsent: self defaultStart y) asSVGNumberOrPercentage.

	^ x @ y