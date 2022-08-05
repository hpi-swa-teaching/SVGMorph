initialize-release
linearFromSVG: anElement transformedBy: aTransformation

	|start end ramp|
	ramp := self createRampFromSVGGradient: anElement.
	
	start := self startFrom: anElement.
	end := self endFrom: anElement.
	
	start := aTransformation transformPoint: start.
	end := aTransformation transformPoint: end.
	
	^ (super ramp: ramp)
		originalElement: anElement;
		origin: start;
		direction: end - start;
		normal: nil;
		radial: false;
		units: (self unitsFrom: anElement);
		spread: (self spreadFrom: anElement);
		yourself