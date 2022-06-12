as yet unclassified
computeBounds

	self points size == 0 ifTrue: [^ self].
	self
		privateBounds: ((Rectangle encompassing: (self points)) outsetBy: ((self composedStyle at: 'stroke-width') // 2));
		privateFullBounds: self bounds
