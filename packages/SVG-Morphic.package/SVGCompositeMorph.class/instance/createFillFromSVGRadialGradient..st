initialization
createFillFromSVGRadialGradient: anElement
	"Create a radial fill style from the given element.."

	|center radius ramp transformation origin direction|
	transformation := self transformFromSVGAttribute: (anElement attributeAt: 'gradientTransform').
	ramp := self createRampFromSVGGradient: anElement.
	
	center := (anElement attributeAt: 'cx' ifAbsent: 0.5) asSVGNumberOrPercentage @ (anElement attributeAt: 'cy' ifAbsent: 0.5) asSVGNumberOrPercentage.
	radius := (anElement attributeAt: 'r' ifAbsent: 0.5) asSVGNumberOrPercentage.
	
	origin := transformation transformPoint: center.
	direction := (transformation transformPoint: radius asPoint + center) - origin.
	
	self setFill: (anElement attributeAt: 'id')
		to: ((SVGGradientFillStyle ramp: ramp)
		originalElement: anElement;
		origin: origin;
		direction: direction x @ 0;
		normal: 0 @ direction y;
		radial: true;
		units: (anElement attributeAt: 'gradientUnits' ifAbsent: [#objectBoundingBox]) asSymbol;
		spread: (anElement attributeAt: 'spreadMethod' ifAbsent: [#pad]) asSymbol;
		yourself)