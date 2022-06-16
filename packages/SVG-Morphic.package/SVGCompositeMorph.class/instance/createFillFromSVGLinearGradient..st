initialization
createFillFromSVGLinearGradient: anElement
	"Create a linear fill style from the given element."

	| start end ramp transformation |
	transformation := self transformFromSVGAttribute: (anElement attributeAt: 'gradientTransform').
	ramp := self createRampFromSVGGradient: anElement.
	
	start := (anElement attributeAt: 'x1' ifAbsent: 0) asSVGNumberOrPercentage @ (anElement attributeAt: 'y1' ifAbsent: 0) asSVGNumberOrPercentage.
	end := (anElement attributeAt: 'x2' ifAbsent: 1) asSVGNumberOrPercentage @ (anElement attributeAt: 'y2' ifAbsent: 0) asSVGNumberOrPercentage.
	
	start := transformation transformPoint: start.
	end := transformation transformPoint: end.
	
	self setFill: (anElement attributeAt: 'id')
		to: ((SVGGradientFillStyle ramp: ramp)
		origin: start;
		direction: end - start;
		normal: nil;
		radial: false;
		units: (anElement attributeAt: 'gradientUnits' ifAbsent: [#objectBoundingBox]) asSymbol;
		spread: (anElement attributeAt: 'spreadMethod' ifAbsent: [#pad]) asSymbol;
		yourself)