actions
actionOpenFile

	| file svg |
	file := FileList2 modalFileSelectorForSuffixes: #('svg' 'svgz').
	file ifNil: [^nil].
	
	[svg := SVGMorph fromFileStream: file]
		ensure: [file close].
	self svg: svg