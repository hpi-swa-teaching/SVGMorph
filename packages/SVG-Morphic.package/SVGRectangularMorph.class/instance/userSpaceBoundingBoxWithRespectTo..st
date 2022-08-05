helpers
userSpaceBoundingBoxWithRespectTo: aComposite
	"Answer the bounding box of the receiver with respect to the transforms intervening between the receiver and aComposite."

	^ self rectangle scaleBy: (self transformFrom: aComposite) compositeScale