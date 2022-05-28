as yet unclassified
testRectangle
	
	self hasValue: '100@100' atKey: 'Position' in: (SVGInfoPanelGenerator for: (self subject findByClass: SVGRectMorph)).
	self hasValue: '60' atKey: 'Width' in: (SVGInfoPanelGenerator for: (self subject findByClass: SVGRectMorph)).
	self hasValue: '50' atKey: 'Height' in: (SVGInfoPanelGenerator for: (self subject findByClass: SVGRectMorph))