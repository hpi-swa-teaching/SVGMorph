helpers
userSpaceBoundingBoxWithRespectTo: aComposite
	"Answer the bounding box of the receiver with respect to the transforms intervening between the receiver and aComposite."

	|rect|
	(self composedStyle at: 'display')
		ifFalse: [^ self bounds].
	self submorphs isEmpty
		ifTrue: [^ self bounds].
	rect := self submorphs first userSpaceBoundingBoxWithRespectTo: aComposite.
	self submorphsDo: [:m |
		rect := rect merge: (m userSpaceBoundingBoxWithRespectTo: aComposite)].
	^ rect