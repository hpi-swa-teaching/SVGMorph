helpers
strokeBezier2: points width: aNumber transform: aTransform

	^ { (self offsetBezier2Segments: points by: aNumber / 2 ) collect: [:p | aTransform transformPoint: p]
		 . (self offsetBezier2Segments: points by: aNumber / 2 negated) collect: [:p | aTransform transformPoint: p] }