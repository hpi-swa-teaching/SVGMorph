helpers
stitchBezier2Segments: verticies
	"Answer a version of the receiver where the ends of successive segments match. For closed shapes."
	
	| stiched |
	stiched := verticies copy.
	(3 to: stiched size by: 3)
		do: [:i | stiched atWrap: i put: (stiched atWrap: i) + (stiched atWrap: i+1) / 2.
			stiched atWrap: i+1 put: (stiched atWrap: i)].
	^ stiched
		