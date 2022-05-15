toolbuilder
buildAndOpenFromFile: aFilePath

	self
		svg: (SVGMorph fromFile: aFilePath);
		buildAndOpen
