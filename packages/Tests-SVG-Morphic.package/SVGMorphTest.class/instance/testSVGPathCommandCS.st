testing - existence
testSVGPathCommandCS

	self expectPathSegmentsOf: '<svg version="1.1" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg"><path d="M10 80 C 40 10, 65 10, 95 80 S 150 150, 180 80"/></svg>'
		toEqual: {Bezier3Segment from: 10 @ 80 via: 40 @ 10 and: 65 @ 10 to: 95 @ 80 .
							 Bezier3Segment from: 95 @ 80 via: 125 @ 150 and: 150 @ 150 to: 180 @ 80 .
							 SVGFixupLineSegment from: 180 @ 80 to: 10 @ 80}