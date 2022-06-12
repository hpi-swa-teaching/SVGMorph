initialization
transformFromSVGElement: anElement
	"Answer a new MatrixTransform2x3 for the transform attribute."

	^ self transformFromSVGAttribute: (anElement attributeAt: 'transform')