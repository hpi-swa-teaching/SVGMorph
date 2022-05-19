as yet unclassified
containsPoint: aPoint
	| center width height|
	center := self bounds center.
	width := self bounds width.
	height := self bounds height.
	^ (((aPoint x - center x) squared) / (width squared)) + (((aPoint y - center y) squared) / (height squared)) <= 1.