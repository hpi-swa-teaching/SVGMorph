as yet unclassified
fullDrawOn: aCanvas
	"Draw the full Morphic structure on the given Canvas"
	|transformedBounds|
	transformedBounds := (self transformFrom: self world) localBoundsToGlobal: self fullBounds.
	self visible ifFalse: [^ self].
	"(aCanvas isVisible: transformedBounds) ifFalse:[^self]."
	(self hasProperty: #errorOnDraw) ifTrue:[^self drawErrorOn: aCanvas].
	"Note: At some point we should generalize this into some sort of
	multi-canvas so that we can cross-optimize some drawing operations."

	"Pass 1: Draw eventual drop-shadow"
	self hasDropShadow ifTrue: [self drawDropShadowOn: aCanvas].
	(self hasRolloverBorder and: [(aCanvas seesNothingOutside: self bounds) not])
		ifTrue: [self drawRolloverBorderOn: aCanvas].

	"(aCanvas isVisible: transformedBounds) ifTrue:[aCanvas drawMorph: self]."
	aCanvas drawMorph: self.
	self drawSubmorphsOn: aCanvas.
	self drawOverlayOn: aCanvas