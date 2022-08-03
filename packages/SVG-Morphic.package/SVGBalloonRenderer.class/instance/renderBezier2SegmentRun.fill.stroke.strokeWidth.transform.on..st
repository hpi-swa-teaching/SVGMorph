rendering
renderBezier2SegmentRun: aSegmentRun fill: aFillStyle stroke: aStrokeStyle strokeWidth: aNumber transform: aMatrix on: aCanvas
		
	aCanvas preserveStateDuring: [:bc |
		bc
			aaLevel: 4;
			drawBezierShape: (aSegmentRun stitchedClosed points collect: [:p | aMatrix transformPoint: p])
				color: aFillStyle
				borderWidth: 0
				borderColor: Color transparent;
			drawGeneralBezierShape: (aSegmentRun stroke: aNumber transform: aMatrix)
				color: aStrokeStyle
				borderWidth: 0
				borderColor: Color transparent]