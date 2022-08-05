initialization
createFillFromSVGLinearGradient: anElement

	self setFill: (anElement attributeAt: 'id')
		to: (SVGGradientFillStyle
			linearFromSVG: anElement
			transformedBy: (self transformFromSVGAttribute: (anElement attributeAt: 'gradientTransform')))