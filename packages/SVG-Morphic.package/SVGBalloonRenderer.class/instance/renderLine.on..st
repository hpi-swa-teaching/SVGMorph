rendering
renderLine: anSVGLine on: aCanvas
	"Render the given object on the canvas."

	|lineWidth lineColor transform scale rectangle|
	lineWidth := (anSVGLine composedStyle at: 'stroke-width') rounded max: 1.
	transform := anSVGLine transformFrom: anSVGLine world.
	scale := transform compositeScale.
	rectangle := anSVGLine rectangle scaleBy: scale.
	transform := transform composedWithLocal: (MatrixTransform2x3 withScale: scale reciprocal).
	lineColor := anSVGLine composedStyle at: 'stroke'.
	aCanvas asBalloonCanvas preserveStateDuring: [:bc|
		bc transformBy: transform during: [:balloonCanvas |
			balloonCanvas
				aaLevel: anSVGLine antialiasingLevel;
				drawPolygon: {rectangle origin. rectangle corner}
				color: lineColor
				borderWidth: lineWidth
				borderColor: lineColor]]