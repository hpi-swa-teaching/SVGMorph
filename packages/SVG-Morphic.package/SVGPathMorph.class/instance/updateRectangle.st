as yet unclassified
updateRectangle
	
	| allPoints |
	allPoints := Array streamContents:
		[:s | self segments do: [:seg | seg controlPointsDo: [:point | s nextPut: point]]].
	allPoints size == 0 ifTrue: [^ self].
	self rectangle: ((Rectangle encompassing: allPoints) outsetBy: ((self composedStyle at: 'stroke-width')// 2)).