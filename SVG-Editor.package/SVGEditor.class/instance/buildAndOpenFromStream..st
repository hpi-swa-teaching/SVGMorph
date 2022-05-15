toolbuilder
buildAndOpenFromStream: aStream

	self
		svg: (SVGMorph fromFileStream: aStream);
		buildAndOpen
