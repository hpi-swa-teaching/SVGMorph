helpers
computeBounds

	self rectangle ifNil: [^ self].
	self
		privateBounds: (self transform localBoundsToGlobal: self rectangle);
		privateFullBounds: self bounds