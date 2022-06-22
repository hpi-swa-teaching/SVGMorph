rendering
renderRect: anSVGRect on: aCanvas
	"Render the given object on the canvas."

	|fill lineWidth lineColor transform scale rectangle|
	fill := anSVGRect composedFillStyle.
	transform := anSVGRect transformFrom: anSVGRect world.
	scale := transform compositeScale.
	rectangle := anSVGRect rectangle scaleBy: scale.
	transform := transform composedWithLocal: (MatrixTransform2x3 withScale: scale reciprocal).
	lineWidth := (anSVGRect composedStyle at: 'stroke-width') rounded max: 1.
	lineColor := anSVGRect composedStyle at: 'stroke'.
	aCanvas asBalloonCanvas preserveStateDuring: [:bc|
		bc transformBy: transform during: [:balloonCanvas |
			balloonCanvas
				aaLevel: anSVGRect antialiasingLevel;
				drawRectangle: rectangle
				color: fill
				borderWidth: lineWidth
				borderColor: lineColor]]