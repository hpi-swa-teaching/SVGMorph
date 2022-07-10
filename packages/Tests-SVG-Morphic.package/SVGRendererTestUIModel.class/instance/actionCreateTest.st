actions
actionCreateTest

	SVGRenderTest new
		createTest: self identifier
		suchThat: self svgString
		shouldRenderAs: self form