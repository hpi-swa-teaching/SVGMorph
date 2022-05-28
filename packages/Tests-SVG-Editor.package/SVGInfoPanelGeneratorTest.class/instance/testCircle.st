as yet unclassified
testCircle
	
	self hasValue: '30@40' atKey: 'Position' in: (SVGInfoPanelGenerator for: (self subject findByClass: SVGCircleMorph)).
	self hasValue: '60' atKey: 'Radius' in: (SVGInfoPanelGenerator for: (self subject findByClass: SVGCircleMorph))