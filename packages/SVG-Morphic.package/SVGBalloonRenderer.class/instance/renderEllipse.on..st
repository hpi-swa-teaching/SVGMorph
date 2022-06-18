rendering
renderEllipse: anSVGEllipse on: aCanvas
	"Render the given object on the canvas."

	| fill lineWidth lineColor matrix rectangle |
	fill := anSVGEllipse composedFillStyle.
	lineColor := anSVGEllipse composedStyle at: 'stroke'.
	matrix := anSVGEllipse transformFrom: anSVGEllipse world.
	rectangle := anSVGEllipse rectangle.

	lineWidth := anSVGEllipse composedStyle at: 'stroke-width'.

	aCanvas preserveStateDuring: [:bc|
		"bc transformBy: matrix during: [:balloonCanvas |"
			bc
				aaLevel: 4;
				drawBezier3Shape: ((self ringAt: (rectangle center) r: (rectangle extent / 2) b: lineWidth) collect: [:p | matrix transformPoint: p])
					color: lineColor
					borderWidth: 0
					borderColor: nil;
				drawBezier3Shape: ((self circleAt: (rectangle center) r: (rectangle extent / 2 - (lineWidth / 2)))  collect: [:p | matrix transformPoint: p])
					color: fill
					borderWidth: 0
					borderColor: lineColor
				]"]"