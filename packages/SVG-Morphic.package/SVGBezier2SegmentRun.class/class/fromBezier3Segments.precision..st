instance creation
fromBezier3Segments: segments precision: aNumber

	^ self segments: (segments gather: [:b3seg | b3seg asBezier2Segments: aNumber])