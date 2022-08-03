rendering
renderEllipse: anSVGEllipse on: aCanvas

	self
		renderBezier3Segments: (Bezier3Segment
			makeEllipseSegments: anSVGEllipse rectangle)
		fill: anSVGEllipse composedFillStyle
		stroke: (anSVGEllipse composedStyle at: 'stroke')
		strokeWidth: (anSVGEllipse composedStyle at: 'stroke-width')
		transform: (anSVGEllipse transformFrom: anSVGEllipse world)
		on: aCanvas