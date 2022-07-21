*SVG-Morphic
equalsBezier3Segment: anotherLineSegment

	^ (super equalsLineSegment: anotherLineSegment)
			and: (self via1 = anotherLineSegment via1)
			and: (self via2 = anotherLineSegment via2)