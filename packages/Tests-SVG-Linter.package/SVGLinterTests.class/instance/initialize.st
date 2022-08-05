initialization
initialize

	super initialize.

	self
		classes: ((SystemNavigation default allClasses
			select: [:aClass |
				(aClass class category beginsWith: 'SVG') or: [aClass class category beginsWith: 'Tests-SVG']]));
		classTestObjects: (self classes collect: [:anObject | anObject as: SLTestObject])