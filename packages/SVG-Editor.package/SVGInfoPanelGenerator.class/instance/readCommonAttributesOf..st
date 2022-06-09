helpers
readCommonAttributesOf: aMorph

	self 
		at: 'Type' put: aMorph humanReadableClassName;
		at: 'ID' put: aMorph id;
		readStylesOf: aMorph.
	