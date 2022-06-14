helpers
readStylesOf: aMorph

	aMorph style keysAndValuesDo: [ :key :value |
		self at: key put: value asString]