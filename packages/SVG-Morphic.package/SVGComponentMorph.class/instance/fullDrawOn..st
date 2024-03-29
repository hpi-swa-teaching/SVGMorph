helpers
fullDrawOn: aCanvas
	"Draw the full Morphic structure on the given Canvas"

	self visible ifFalse: [^ self].
	(self hasProperty: #errorOnDraw) ifTrue: [^ self drawErrorOn: aCanvas].
	"Note: At some point we should generalize this into some sort of
	multi-canvas so that we can cross-optimize some drawing operations."

	"Pass 1: Draw eventual drop-shadow"
	self hasDropShadow ifTrue: [self drawDropShadowOn: aCanvas].
	(self hasRolloverBorder and: [(aCanvas seesNothingOutside: self bounds) not])
		ifTrue: [self drawRolloverBorderOn: aCanvas].

	aCanvas drawMorph: self.
	self
		drawSubmorphsOn: aCanvas;
		drawOverlayOn: aCanvas