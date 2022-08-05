*SVG-Morphic
transformedBy: aTransform

	^ self class controlPoints: (self controlPoints collect: [:p | aTransform transformPoint: p])