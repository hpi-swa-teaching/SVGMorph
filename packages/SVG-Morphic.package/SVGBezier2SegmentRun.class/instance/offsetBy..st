helpers
offsetBy: aNumber

	^ (self class
		segments: (self segments collect: [:seg | seg offsetBy: aNumber]))
		stitchedClosed