attribute parsing
endFrom: anElement

	|x y|
	
	x := (anElement attributeAt: 'x2' ifAbsent: self defaultEnd x) asSVGNumberOrPercentage.
	y := (anElement attributeAt: 'y2' ifAbsent: self defaultEnd y) asSVGNumberOrPercentage.

	^ x @ y