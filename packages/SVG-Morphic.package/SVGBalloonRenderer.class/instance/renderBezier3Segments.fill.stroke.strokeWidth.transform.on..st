rendering
renderBezier3Segments: aCollection fill: aFillStyle stroke: aStrokeStyle strokeWidth: aNumber transform: aMatrix on: aCanvas

	|bezier2Run|

	bezier2Run := SVGBezier2SegmentRun
		fromBezier3Segments: aCollection
		precision: aMatrix compositeScale r reciprocal.

	self
		renderBezier2SegmentRun: bezier2Run
		fill: aFillStyle
		stroke: aStrokeStyle
		strokeWidth: aNumber
		transform: aMatrix
		on: aCanvas