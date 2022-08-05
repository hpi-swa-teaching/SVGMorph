initialize-release
radialFromSVG: anElement transformedBy: aTransformation
	
	|center radius ramp origin direction|
	ramp := self createRampFromSVGGradient: anElement.
	
	center := self centerFrom: anElement.
	radius := self radiusFrom: anElement.
	
	origin := aTransformation transformPoint: center.
	direction := (aTransformation transformPoint: radius asPoint + center) - origin.
	
	^ (super ramp: ramp)
		originalElement: anElement;
		origin: origin;
		direction: direction x @ 0;
		normal: 0 @ direction y;
		radial: true;
		units: (self unitsFrom: anElement);
		spread: (self spreadFrom: anElement);
		yourself