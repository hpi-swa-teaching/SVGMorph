Parsing SVG Strings
testForBrownStroke
"We use TestStrokeIn with (Color r: 0.647 g: 0.164 b: 0.164) instead of Color brown because the Color brown will only be displayed in an SVGMorph as (Color r: 0.647 g: 0.164 b: 0.164)(the Morph still looks correct). This is because the input is an HTML color code which in that case has different RGB values compared to the one in the Color class"

|brownStrokeobjects brownStrokeMorphs|
brownStrokeobjects := self brownStrokeObjects.
brownStrokeMorphs := brownStrokeobjects collect: [ :aSVGMorph| (SVGMorph fromString: (self perform: aSVGMorph)) submorphs first].
^brownStrokeMorphs do: [ :aSVGMorph| self testStrokeIn: aSVGMorph with: (Color r: 0.647 g: 0.164 b: 0.164).].