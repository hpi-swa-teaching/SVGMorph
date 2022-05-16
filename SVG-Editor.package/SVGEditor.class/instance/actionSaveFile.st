actions
actionSaveFile

	| filename stream |
	filename := UIManager default
		saveFilenameRequest: 'Save the svg to...'
		initialAnswer: 'unnamed.svg'.
	filename ifNil: [^ self].
	stream := FileDirectory default newFileNamed: filename.
	
	[SVGExporter new
		visitSVGMorph: self svg;
		exportOn: stream]
		ensure: [stream close]