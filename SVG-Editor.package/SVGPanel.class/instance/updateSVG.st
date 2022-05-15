updating
updateSVG

	self svg ifNotNil:
		[ self removeMorph: self svg ].
	
	self svg: (self model perform: self svgSelector).
	
	self svg ifNotNil:
		[ self addMorph: self svg
				 fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1)) ]
