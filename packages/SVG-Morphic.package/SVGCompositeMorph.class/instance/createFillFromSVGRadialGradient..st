initialization
createFillFromSVGRadialGradient: anElement
	"Create a radial fill style from the given element.."

	self setFill: (anElement attributeAt: 'id')
		to: (SVGGradientFillStyle 
			radialFromSVG: anElement
			transformedBy: (self transformFromSVGAttribute: (anElement attributeAt: 'gradientTransform')))