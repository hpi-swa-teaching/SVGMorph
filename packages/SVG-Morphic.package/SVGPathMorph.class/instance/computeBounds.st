helpers
computeBounds

	|allPoints|
	allPoints := Array streamContents:
		[:s | self segments do: [:seg | seg controlPointsDo: [:point | s nextPut: point]]].
	allPoints isEmpty ifTrue: [^ self].
	self
		privateBounds: ((Rectangle encompassing: allPoints) outsetBy: ((self composedStyle at: 'stroke-width')// 2));
		privateFullBounds: self bounds