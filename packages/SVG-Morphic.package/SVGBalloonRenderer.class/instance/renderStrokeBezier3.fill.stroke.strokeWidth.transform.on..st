rendering
renderStrokeBezier3: points fill: fillStyle stroke: strokeStyle strokeWidth: aNumber transform: aMatrix on: aCanvas

		aCanvas preserveStateDuring: [:bc |
		bc
			aaLevel: 4;
			drawBezier3Shape: (points collect: [:p | aMatrix transformPoint: p])
				color: fillStyle
				borderWidth: 0
				borderColor: nil.
			(aNumber ~= 0 and: [strokeStyle notNil])
				ifTrue: [
					bc
						drawGeneralBezierShape: (self strokeBezier3: points width: aNumber transform: aMatrix)
						color: strokeStyle
						borderWidth: 0
						borderColor: nil]]
