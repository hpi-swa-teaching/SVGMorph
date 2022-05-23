toolbuilder
buildAndOpenFromStream: aStream

	self model svg: (SVGMorph fromFileStream: aStream).
	self buildAndOpen
