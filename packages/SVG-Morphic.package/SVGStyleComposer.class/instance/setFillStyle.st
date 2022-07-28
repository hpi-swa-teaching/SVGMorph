styling
setFillStyle

	self
		addStyleAt: 'opacity' defaultValue: self defaultOpacity;
	 	addStyleAt: 'fill-opacity' defaultValue: self defaultFillOpacity;
		addStyleAt: 'fill' defaultValue: self defaultFill;
		addStyleAt: 'fill-rule' defaultValue: self defaultFillRule.

	self newFillOpacity ifTrue: [self balloonStyle at: 'fill' put: ((self balloonStyle at: 'fill')
																alphaMixed: (self balloonStyle at: 'fill-opacity') * (self balloonStyle at: 'opacity'))]
