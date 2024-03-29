rendering
renderPath: anSVGPath on: aCanvas

	|fill lineWidth lineColor|
	anSVGPath segments isEmpty
		ifTrue: [^ self].
	fill := anSVGPath composedFillStyle.
	lineWidth := (anSVGPath composedStyle at: 'stroke-width') rounded max: 1.
	lineColor := anSVGPath composedStyle at: 'stroke'.
	aCanvas asBalloonCanvas preserveStateDuring: [:bc|
		bc transformBy: (anSVGPath transformFrom: anSVGPath world) during: [:balloonCanvas |
			balloonCanvas
				aaLevel: anSVGPath antialiasingLevel;
				drawGeneralSegments: anSVGPath segments
				color: fill
				borderWidth: lineWidth
				borderColor: lineColor]]