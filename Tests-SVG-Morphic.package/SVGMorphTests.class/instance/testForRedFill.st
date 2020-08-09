Parsing SVG Strings
testForRedFill

|redFillObjects redFillMorphs|
redFillObjects := self redFillObjects.
redFillMorphs:= redFillObjects collect: [ :aSVGMorph| (SVGMorph fromString: (self perform: aSVGMorph)) submorphs first]. 
^redFillMorphs do: [ :aSVGMorph| self testFillIn: aSVGMorph with: Color red].