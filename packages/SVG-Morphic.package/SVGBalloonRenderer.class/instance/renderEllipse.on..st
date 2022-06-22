rendering
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

	lineWidth := 20.

	aCanvas preserveStateDuring: [:bc|
			bc
				aaLevel: 4;
				"drawBezier3Shape: ((self ringAt: (rectangle center) r: (rectangle extent / 2) b: lineWidth) collect: [:p | matrix transformPoint: p])
					color: lineColor
					borderWidth: 0
					borderColor: nil;"
				drawBezier3Shape: ((self circleAt: (rectangle center) r: (rectangle extent / 2 - (lineWidth / 2)))  collect: [:p | matrix transformPoint: p])
					color: fill
					borderWidth: 0
					borderColor: lineColor
				].
			
	aCanvas asBalloonCanvas preserveStateDuring: [:bc|
		bc transformBy: (matrix) during: [:balloonCanvas |
			balloonCanvas
				aaLevel: anSVGEllipse antialiasingLevel;				
				drawPolygon: (self getOffsetFromBeziers:  (self circleAt: (rectangle center) r: (rectangle extent / 2)) by: (lineWidth /2))
				color: lineColor
				borderWidth: 1
				borderColor: Color orange
		]]