helpers
handleBoundsChange: aBlock

	|oldBounds newBounds|
	oldBounds := self bounds.
	aBlock value.
	newBounds := self bounds.
	self boundsChangedFrom: oldBounds to: newBounds