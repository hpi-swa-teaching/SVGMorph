as yet unclassified
renderEllipse: anSVGEllipse on: aCanvas
	"Render the given object on the canvas."
	
	| fill lineWidth lineColor matrix rectangle scale |
	fill := anSVGEllipse composedFillStyle.
	lineColor := anSVGEllipse composedStyle at: 'stroke'.
	matrix := anSVGEllipse transformFrom: anSVGEllipse world.
	rectangle := anSVGEllipse rectangle.
	
	scale := matrix compositeScale.
	rectangle := rectangle scaleBy: scale .
	matrix := matrix composedWithLocal: (MatrixTransform2x3 withScale: scale reciprocal).
	
	lineWidth := ((anSVGEllipse composedStyle at: 'stroke-width') * scale x) rounded clampLow: 1.
	
	aCanvas preserveStateDuring: [:bc|
		bc transformBy: matrix during: [:balloonCanvas |
			balloonCanvas
				aaLevel: 4;
				drawOval: rectangle
				color: fill
				borderWidth: lineWidth
				borderColor: lineColor]]