helpers
stitchedClosed
	"Answer a version of the receiver where the ends of successive segments match."

	|result avg|
	result := self copy.
	result segments ifEmpty: [^ result].
	result segments overlappingPairsDo: [:segA :segB |
		avg := segA end + segB start / 2.
		segA end: avg.
		segB start: avg].
	avg := result segments first start + result segments last end / 2.
	result segments last end: avg.
	result segments first start: avg.
	^ result