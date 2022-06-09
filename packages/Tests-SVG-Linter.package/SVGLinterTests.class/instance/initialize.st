initialization
initialize

	super initialize.

	self
		classes: ((SystemNavigation default allClasses
			select: [:aClass |
				(aClass class category beginsWith: 'SVG')]));
		classTestObjects: (self classes collect: [:anObject | anObject as: SLTestObject]).
