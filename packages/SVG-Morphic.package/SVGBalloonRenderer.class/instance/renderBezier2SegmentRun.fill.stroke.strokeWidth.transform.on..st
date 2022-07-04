rendering
renderBezier2SegmentRun: segments fill: fillStyle stroke: strokeStyle strokeWidth: aNumber transform: aMatrix on: aCanvas
		
	aCanvas preserveStateDuring: [:bc |
		bc
			aaLevel: 4;
			drawBezierShape: (segments stitchedClosed points collect: [:p | aMatrix transformPoint: p])
				color: fillStyle
				borderWidth: 0
				borderColor: Color transparent;
			drawGeneralBezierShape: (segments stroke: aNumber transform: aMatrix)
				color: strokeStyle
				borderWidth: 0
				borderColor: Color transparent]