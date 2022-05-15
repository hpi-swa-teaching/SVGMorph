updating
update: aSymbol

	super update: aSymbol.
	(aSymbol = self getChildrenSelector) ifTrue: [self updateSVG]