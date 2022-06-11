as yet unclassified
computeBounds
	self points size == 0 ifTrue: [^ self].
	bounds := fullBounds :=  (Rectangle encompassing: (self points))outsetBy: ((self composedStyle at: 'stroke-width') // 2)
