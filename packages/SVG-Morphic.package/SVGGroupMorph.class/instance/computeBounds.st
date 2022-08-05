helpers
computeBounds

	|box|
	(self submorphs isNil or: [self submorphs isEmpty]) ifTrue: [^ self].
	box := nil.
	self submorphs do: [:m|
		|subBounds|
		subBounds := self transform localBoundsToGlobal: m bounds.
		box
			ifNil:[box := subBounds]
			ifNotNil:[box := box quickMerge: subBounds]].
	box ifNil:[box := 0 @ 0 corner: 20 @ 20].
	self
		privateBounds: box;
		privateFullBounds: self bounds