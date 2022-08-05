updating
update: aSymbol

	super update: aSymbol.
	aSymbol = self svgSelector
		ifTrue: [self updateSVG]