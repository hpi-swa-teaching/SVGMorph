updating
updateSVG

	self submorphs
		do: [:aMorph | self removeMorph: aMorph].
	(self model perform: self getChildrenSelector) ifNotNil: [:child| self addMorph: child fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1) )]