styling
setStrokeStyle

	self 
		addStyleAt: 'stroke-width' defaultValue: self defaultStrokeWidth;
		addStyleAt: 'stroke-linecap' defaultValue: self defaultStrokeLinecap;
		addStyleAt: 'stroke-opacity' defaultValue: self defaultStrokeOpacity;
		addStyleAt: 'stroke' defaultValue: self defaultStroke.
		
	self newStrokeOpacity ifTrue: [ self balloonStyle at: 'stroke' put: ((self balloonStyle at: 'stroke')
																alphaMixed: (self balloonStyle at: 'stroke-opacity') * (self balloonStyle at: 'opacity'))]