toolbuilder
buildAndOpenFromString: aString

	self
		svg: (SVGMorph fromString: aString);
		buildAndOpen
