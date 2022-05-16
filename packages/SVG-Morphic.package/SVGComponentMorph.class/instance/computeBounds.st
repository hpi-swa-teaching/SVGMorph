nil
computeBounds
	| box |
	(self rectangle isNil) ifTrue:[^self].
	box := nil.
	box := self transform localBoundsToGlobal: self rectangle.
	fullBounds := bounds := box