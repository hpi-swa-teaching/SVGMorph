as yet unclassified
computeBounds
	"Answer the bounding box of the receiver with respect to the transforms intervening between the receiver and aComposite."

	|fontSize textFont anchor offset ptSize|
	fontSize := (self composedStyle at: 'font-size').
	textFont := self composedStyle at: 'font'.
	ptSize := (fontSize @ 0) x rounded - 1 max: 1.
	textFont := TTCFontSet familyName: textFont familyName pointSize:  ptSize.
	anchor := self composedStyle at: 'text-anchor'.
	offset := 0 @ textFont ascent.
	anchor  = 'middle'
		ifTrue: [offset := (textFont widthOfString: self text) // 2 @ textFont ascent].
	anchor  = 'end'
		ifTrue: [offset := (textFont widthOfString: self text) @ textFont ascent].
	self
		privateBounds: (self transform localBoundsToGlobal:  ((self location) - offset extent: (textFont widthOfString: self text) @ textFont height));
		privateFullBounds: self bounds