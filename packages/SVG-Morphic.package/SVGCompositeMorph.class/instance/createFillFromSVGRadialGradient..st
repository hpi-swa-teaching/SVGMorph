initialization
createFillFromSVGRadialGradient: anElement
	"Create a radial fill style from the given element.."

	|idg p1 p2 ramp xlink linkFill trans origin direction|
	idg := anElement attributeAt: 'id'.
	trans := self transformFromSVGAttribute: (anElement attributeAt: 'gradientTransform').
	ramp := self createRampFromSVGGradient: anElement.
	xlink := anElement attributeAt: 'xlink:href'.
	xlink notNil
		ifTrue: [
			linkFill := self getFill: xlink copyWithoutFirst.
			ramp isEmpty
				ifTrue: [ramp :=linkFill colorRamp].
			p1 := (anElement attributeAt: 'cx' ifAbsent: 0.5) asSVGNumberOrPercentage @ (anElement attributeAt: 'cy' ifAbsent: 0.5) asSVGNumberOrPercentage.
			p2 := (anElement attributeAt: 'r' ifAbsent: 0.5) asSVGNumberOrPercentage asPoint]
		ifFalse: [
			p1 := (anElement attributeAt: 'cx' ifAbsent: 0.5) asSVGNumberOrPercentage @ (anElement attributeAt: 'cy' ifAbsent: 0.5) asSVGNumberOrPercentage.
			p2 := (anElement attributeAt: 'r' ifAbsent: 0.5) asSVGNumberOrPercentage asPoint].
	origin := trans transformPoint: p1.
	direction := (trans transformPoint: p2 + p1) - origin.
	self setFill: idg to: ((SVGGradientFillStyle ramp: ramp)
		origin: origin;
		direction: direction x @ 0;
		normal: 0 @ direction y;
		radial: true;
		units: (anElement attributeAt: 'gradientUnits' ifAbsent: [#objectBoundingBox]) asSymbol;
		spread: (anElement attributeAt: 'spreadMethod' ifAbsent: [#pad]) asSymbol;
		yourself)