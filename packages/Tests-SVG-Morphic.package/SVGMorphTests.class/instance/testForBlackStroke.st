Parsing SVG Strings
testForBlackStroke

|blackStrokeObjects blackStrokeMorphs|
blackStrokeObjects := self blackStrokeObjects.
blackStrokeMorphs := blackStrokeObjects collect: [ :aSVGMorph| (SVGMorph fromString: (self perform: aSVGMorph)) submorphs first].
^blackStrokeMorphs do: [ :aSVGMorph| self testStrokeIn: aSVGMorph with: Color black.].