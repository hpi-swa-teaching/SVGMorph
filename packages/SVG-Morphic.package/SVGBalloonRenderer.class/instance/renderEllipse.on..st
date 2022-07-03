rendering
renderEllipse: anSVGEllipse on: aCanvas
	"Render the given object on the canvas."
	
	self
		renderBezier3Segments: (Bezier3Segment
			makeEllipseSegments: anSVGEllipse rectangle count: 10)
		fill: anSVGEllipse composedFillStyle
		stroke: (anSVGEllipse composedStyle at: 'stroke')
		strokeWidth: (anSVGEllipse composedStyle at: 'stroke-width')
		transform: (anSVGEllipse transformFrom: anSVGEllipse world)
		on: aCanvas