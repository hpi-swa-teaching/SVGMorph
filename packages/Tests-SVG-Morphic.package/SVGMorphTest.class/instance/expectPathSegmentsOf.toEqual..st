testing - existence
expectPathSegmentsOf: aString toEqual: aCollectionOfSegments

	|segments areSame|
	self wantsToTest: (SVGMorph fromString: aString).

	segments := (self subject findByClass: SVGPathMorph) segments.
	areSame := (segments size = aCollectionOfSegments size).
	1 to: segments size do: [: index |
		areSame := areSame and: ((segments at: index) equals: (aCollectionOfSegments at: index))].
	
	^ areSame