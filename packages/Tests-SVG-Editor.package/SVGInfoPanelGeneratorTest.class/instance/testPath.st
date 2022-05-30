as yet unclassified
testPath
	
	self hasValue: 'Path' atKey: 'Type' in: (SVGInfoPanelGenerator for: (self subject findByClass: SVGPathMorph))
	