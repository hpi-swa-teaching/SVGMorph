initialization
createFillFromSVGRadialGradient: anElement

	self setFill: (anElement attributeAt: 'id')
		to: (SVGGradientFillStyle
			radialFromSVG: anElement
			transformedBy: (self transformFromSVGAttribute: (anElement attributeAt: 'gradientTransform')))