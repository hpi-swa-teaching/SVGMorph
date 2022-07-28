rendering
renderBezier3Segments: segments fill: fillStyle stroke: strokeStyle strokeWidth: aNumber transform: aMatrix on: aCanvas

	|bezier2Run|

	bezier2Run := SVGBezier2SegmentRun
		fromBezier3Segments: segments
		precision: aMatrix compositeScale r reciprocal.

	self
		renderBezier2SegmentRun: bezier2Run
		fill: fillStyle
		stroke: strokeStyle
		strokeWidth: aNumber
		transform: aMatrix
		on: aCanvas