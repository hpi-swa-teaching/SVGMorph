as yet unclassified
create: anSVGComponentMorphClass fromSVG: anElement
	"Create a component from the svg."

	|comp|
	comp := anSVGComponentMorphClass new.
	"comp extent: self extent."
	self addMorph: comp.
	"comp transform: MatrixTransform2x3 identity."
	^comp createFromSVG: anElement
	

	