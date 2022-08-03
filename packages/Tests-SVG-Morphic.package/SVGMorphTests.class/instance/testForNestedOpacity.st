SVG colors (fill, stroke, width)
testForNestedOpacity

 	|svgMorph firstGroup secondGroup thirdGroup|
	svgMorph := SVGMorph fromString: self nestedOpacityMorph.
	firstGroup := svgMorph submorphs first.
	secondGroup := firstGroup submorphs first.
	thirdGroup := secondGroup submorphs first.
	self testSVGValue: svgMorph at: 'fill' against: Color black.
	self testSVGValue: firstGroup submorphs second at: 'fill' against: ((Color black) alphaMixed: 0.5).
	self testSVGValue: secondGroup submorphs second at: 'fill' against: ((Color black) alphaMixed: 0.5).
	self testSVGValue: thirdGroup submorphs first at: 'fill' against: ((Color black) alphaMixed: 0.25)