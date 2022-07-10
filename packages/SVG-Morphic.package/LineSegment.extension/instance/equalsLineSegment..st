*SVG-Morphic
equalsLineSegment: anotherLineSegment

	^ (self start = anotherLineSegment start)
			and: (self end = anotherLineSegment end)