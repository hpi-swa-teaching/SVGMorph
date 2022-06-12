nil
containsPoint: aPoint
	
	^ self visible and: [self bounds containsPoint: aPoint]