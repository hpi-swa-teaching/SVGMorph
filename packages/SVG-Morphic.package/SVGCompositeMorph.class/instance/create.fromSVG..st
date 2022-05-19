as yet unclassified
create: anSVGComponentMorphClass fromSVG: anElement
	"Create a component from the svg."

	|comp|
	comp := anSVGComponentMorphClass new.
	self addMorph: comp.
	^comp createFromSVG: anElement
	

	