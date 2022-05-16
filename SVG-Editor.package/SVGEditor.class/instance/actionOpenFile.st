actions
actionOpenFile

	| filename stream |
	filename := UIManager default
		chooseFileMatchingSuffixes: {'svg' . 'svgz'}
		label: 'Choose an SVG file (.svg, .svgz)'.
	filename ifNil: [^ self].
	stream := FileDirectory default readOnlyFileNamed: filename.
	
	[self svg: (SVGMorph fromFileStream: stream)]
		ensure: [stream close]
