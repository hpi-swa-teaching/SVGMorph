rendering
renderPolyline: anSVGPolyine on: aCanvas

	|lineWidth lineColor|
	anSVGPolyine points isEmpty
		ifTrue: [^ anSVGPolyine].
	lineWidth := anSVGPolyine composedStyle at: 'stroke-width'.
	lineColor := anSVGPolyine composedStyle at: 'stroke'.
	aCanvas asBalloonCanvas preserveStateDuring: [:bc|
		bc transformBy: (anSVGPolyine transformFrom: anSVGPolyine world) during: [:balloonCanvas |
			balloonCanvas
				aaLevel: anSVGPolyine antialiasingLevel;
				drawOpenPolygon: anSVGPolyine points asArray
				color: Color transparent
				borderWidth: (lineWidth rounded max: 1)
				borderColor: lineColor]]