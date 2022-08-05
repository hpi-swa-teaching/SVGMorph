helpers
computeBounds

	self points isEmpty ifTrue: [^ self].
	self
		privateBounds: ((Rectangle encompassing: (self points)) outsetBy: ((self composedStyle at: 'stroke-width') // 2));
		privateFullBounds: self bounds