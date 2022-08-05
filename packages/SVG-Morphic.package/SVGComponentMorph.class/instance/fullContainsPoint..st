helpers
fullContainsPoint: aPoint

	^ (self fullBounds containsPoint: aPoint) and: [self containsPoint: aPoint]