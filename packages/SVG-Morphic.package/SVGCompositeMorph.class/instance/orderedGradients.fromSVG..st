initialization
orderedGradients: tag fromSVG: anElement
	"Answer the gradient fills from the given element in an order that will allow xlinks to be resolved in one pass."

	| gradients |
	gradients := OrderedCollection new.
	anElement tagsNamed: tag do: [:g |
		gradients add: g].
	^ gradients