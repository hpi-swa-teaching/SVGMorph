as yet unclassified
boundsChangedFrom: oldBounds to: newBounds
	oldBounds extent = newBounds extent ifFalse:[
		bounds := bounds withWidth: newBounds width.
		bounds := bounds withHeight: newBounds height.
	].
	transform offset: transform offset + (newBounds origin - oldBounds origin)