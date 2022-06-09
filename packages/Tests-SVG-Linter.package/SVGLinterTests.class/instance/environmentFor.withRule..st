private
environmentFor: aPlugIn withRule: aRule

	^ aPlugIn = SLSmallLintPlugIn
		ifTrue: [SVGScopedEnvironment newFor: self classTestObjects test: aRule plugIn: SLSmallLintPlugIn]
		ifFalse: [SLDefaultEnvironment new]