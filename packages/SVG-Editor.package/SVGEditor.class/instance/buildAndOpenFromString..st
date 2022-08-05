toolbuilder
buildAndOpenFromString: aString

	self model svg: (SVGMorph fromString: aString).
	self buildAndOpen
