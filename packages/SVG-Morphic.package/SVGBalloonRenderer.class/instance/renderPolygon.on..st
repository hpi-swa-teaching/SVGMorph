rendering
renderPolygon: anSVGPolygon on: aCanvas

	|fill lineWidth lineColor|
	anSVGPolygon points isEmpty
		ifTrue: [^ anSVGPolygon].
	fill := anSVGPolygon composedFillStyle.
	lineWidth := anSVGPolygon composedStyle at: 'stroke-width'.
	lineColor := anSVGPolygon composedStyle at: 'stroke'.
	aCanvas asBalloonCanvas preserveStateDuring: [:bc|
		bc transformBy: (anSVGPolygon transformFrom: anSVGPolygon world) during: [:balloonCanvas |
			balloonCanvas
				aaLevel: anSVGPolygon antialiasingLevel;
				drawPolygon: anSVGPolygon points asArray
				color: fill
				borderWidth: (lineWidth rounded max: 1)
				borderColor: lineColor]]