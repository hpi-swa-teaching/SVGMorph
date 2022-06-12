initialization
createFromSVG: anElement
	"Create the receiver from the given svg element"

	self removeAllMorphs.
	self setDimensionsFromSVG: anElement.
	anElement tagsNamed: #defs do: [:defs |
		self createDefsFromSVGDefs: defs].
	self saveSVGBoundsInformation: anElement.
	super createFromSVG: anElement