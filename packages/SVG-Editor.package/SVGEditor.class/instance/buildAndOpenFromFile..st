toolbuilder
buildAndOpenFromFile: aFilePath

	self model svg: (SVGMorph fromFile: aFilePath).
	self buildAndOpen
