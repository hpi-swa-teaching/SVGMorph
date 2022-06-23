test cases
pathLineClosingTestCase

    |svg|
    svg := self builder createTestSVG: nil bounded: (0 @ 0 extent: 100 @ 100) transformed: (MatrixTransform2x3 identity) styled: (Dictionary new).
    self builder addPath: nil of: {
        LineSegment from: 10 @ 10 to: 90 @ 10 .
        SVGClosingLineSegment from: 90 @ 10 to: 10 @ 10
    } describedBy: 'M10 10 L 90 10 z' transformed: (MatrixTransform2x3 identity) styled: (Dictionary new) to: svg.
    self builder finalizeTestSVG: svg.
    ^ SVGExportTestCase
        for: svg
        toBe: '<svg version="1.1" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg"><path d="M10 10 L 90 10 z"/></svg>'