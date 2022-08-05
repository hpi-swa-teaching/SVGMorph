helpers
boundsChangedFrom: oldBounds to: newBounds

	|temporaryTransform|
	temporaryTransform := self transform.
	oldBounds extent = newBounds extent ifFalse: [
		temporaryTransform := temporaryTransform composedWithGlobal:
			(MatrixTransform2x3 withOffset: oldBounds origin negated).
		temporaryTransform := temporaryTransform composedWithGlobal:
			(MatrixTransform2x3 withScale: newBounds extent / oldBounds extent).
		temporaryTransform := temporaryTransform composedWithGlobal:
			(MatrixTransform2x3 withOffset: newBounds origin)].
	temporaryTransform offset: temporaryTransform offset + (newBounds origin - oldBounds origin).
	self transform: temporaryTransform