SVG colors (fill, stroke, width)
testForSemiTransparentHTMLColors

|morph|
morph := (SVGMorph fromString: self RectangleYellowFillRedStrokeWithTransparentHTMLColors) submorphs first.
self testFillIn: morph with: (Color fromString: '#FFFF0066').
self testStrokeIn: morph with: (Color fromString: '#FF0000FF')

