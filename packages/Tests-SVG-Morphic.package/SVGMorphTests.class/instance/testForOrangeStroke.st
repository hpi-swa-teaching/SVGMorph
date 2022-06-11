SVG colors (fill, stroke, width)
testForOrangeStroke
"We use TestStrokeIn with (Color r: 1 g: 0.647 b: 0.0) instead of Color orange because the Color orage will only be displayed in an SVGMorph as ((Color r: 1 g: 0.647 b: 0.0) (the Morph still looks correct). This is because the input is an HTML color code which in that case has different RGB values compared to the one in the Color class"

|orangeStrokeObjects orangeStrokeMorphs|
orangeStrokeObjects := self orangeStrokeObjects.
orangeStrokeMorphs := orangeStrokeObjects collect: [:aSVGMorph| (SVGMorph fromString: (self perform: aSVGMorph)) submorphs first].
^orangeStrokeMorphs do: [:aSVGMorph| self testStrokeIn: aSVGMorph with: (Color r: 1 g: 0.647 b: 0.0)]