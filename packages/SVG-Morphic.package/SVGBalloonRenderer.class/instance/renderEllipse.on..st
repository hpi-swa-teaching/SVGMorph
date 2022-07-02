rendering
renderEllipse: anSVGEllipse on: aCanvas
	"Render the given object on the canvas."

	|fill lineWidth lineColor matrix rectangle circ|
	fill := anSVGEllipse composedFillStyle.
	lineColor := anSVGEllipse composedStyle at: 'stroke'.
	matrix := anSVGEllipse transformFrom: anSVGEllipse world.
	rectangle := anSVGEllipse rectangle.
	lineWidth := anSVGEllipse composedStyle at: 'stroke-width'..
"
	circ := self circleAt: (rectangle center) r: (rectangle extent / 2).

	self
		renderStrokeBezier3: circ
		fill: fill
		stroke: lineColor
		strokeWidth: lineWidth
		transform: matrix
		on: aCanvas"
	circ := SVGBezierSegmentRun
		fromBezier3Segments: (Bezier3Segment makeEllipseSegments: rectangle)
		precision: 0.001.
		
	aCanvas preserveStateDuring: [:bc |
		bc
			aaLevel: 4;
			drawBezierShape: (circ points collect: [:p | matrix transformPoint: p])
				color: fill
				borderWidth: 0
				borderColor: nil.
		bc
			drawGeneralBezierShape: (circ stroke: lineWidth transform: matrix)
			color: lineColor
			borderWidth: 0
			borderColor: nil]