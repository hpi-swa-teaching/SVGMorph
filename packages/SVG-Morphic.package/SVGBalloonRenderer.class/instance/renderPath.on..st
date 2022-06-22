rendering
renderPath: anSVGPath on: aCanvas
	"Render the given object on the canvas."
	
	|fill lineWidth lineColor matrix scale vertices|
	anSVGPath segments isEmpty
		ifTrue: [^ self].
	fill := anSVGPath composedFillStyle.
	lineWidth := (anSVGPath composedStyle at: 'stroke-width') rounded max: 1.
	lineWidth := 10.
	lineColor := anSVGPath composedStyle at: 'stroke'.
	
	"auslagerbar"
	matrix := anSVGPath transformFrom: anSVGPath world.
	scale := matrix compositeScale.
	
	vertices := OrderedCollection new.
	vertices add: ((anSVGPath segments first start) scaleBy: scale).
	vertices add: ((anSVGPath segments first via1) scaleBy: scale).
	vertices add: ((anSVGPath segments first via2) scaleBy: scale).
	vertices add: ((anSVGPath segments first end) scaleBy: scale).

	matrix := matrix composedWithLocal: (MatrixTransform2x3 withScale: scale reciprocal).
	
	
	aCanvas asBalloonCanvas preserveStateDuring: [:bc|
		bc 	
			aaLevel: 4;
			drawBezier3Shape: (vertices collect: [:p | matrix transformPoint: p])
				color: fill
				borderWidth: 0
				borderColor: lineColor].
		
	aCanvas asBalloonCanvas preserveStateDuring: [:bc|
		bc transformBy: (matrix) during: [:balloonCanvas |
			balloonCanvas
				aaLevel: 4;
				drawPolygon: (self getOffsetFromBeziers: vertices by: (lineWidth/2))
				color: lineColor
				borderWidth: 1
				borderColor: lineColor]]