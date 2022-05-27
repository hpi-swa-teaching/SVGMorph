accessing
svg: anSVGMorph

	anSVGMorph = self svg ifTrue: [^ self].
	
	svg := anSVGMorph.
	self
		changed: #svg;
		changed: #canCloseFile;
		changed: #canSaveFile;
		changed: #svgTree