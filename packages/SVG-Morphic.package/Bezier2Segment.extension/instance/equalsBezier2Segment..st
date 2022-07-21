*SVG-Morphic
equalsBezier2Segment: anotherLineSegment

	^ (super equalsLineSegment: anotherLineSegment)
			and: (self via = anotherLineSegment via)