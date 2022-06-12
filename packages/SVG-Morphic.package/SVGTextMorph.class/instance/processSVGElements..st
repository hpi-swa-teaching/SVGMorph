initialization
processSVGElements: anElement
	"Process the elements of the given text type element."

	anElement tagsNamed: #tspan do: [:e |
		self createTSpanFromSVGTSpan: e]