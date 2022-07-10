testing - existence
testSVGPathCommandLZ

	self expectPathSegmentsOf: '<svg version="1.1" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg"><path d="M10 10 L 90 10 Z"/></svg>'
		toEqual: { LineSegment from: 10@10 to: 90@10 .
							 SVGClosingLineSegment from: 90@10 to: 10@10 }