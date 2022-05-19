as yet unclassified
computeBounds
	
	| allPoints |
	allPoints := Array streamContents:
		[:s | self segments do: [:seg | seg controlPointsDo: [:point | s nextPut: point]]].
	allPoints size == 0 ifTrue: [^ self].
	fullBounds := bounds := ((Rectangle encompassing: allPoints) outsetBy: ((self composedStyle at: 'stroke-width')// 2)).