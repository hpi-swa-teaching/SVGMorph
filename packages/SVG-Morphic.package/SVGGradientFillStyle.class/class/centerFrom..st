attribute parsing
centerFrom: anElement 

	|x y|
	
	x := (anElement attributeAt: 'cx' ifAbsent: self defaultCenter x) asSVGNumberOrPercentage.
	y := (anElement attributeAt: 'cy' ifAbsent: self defaultCenter y) asSVGNumberOrPercentage.

	^ x @ y