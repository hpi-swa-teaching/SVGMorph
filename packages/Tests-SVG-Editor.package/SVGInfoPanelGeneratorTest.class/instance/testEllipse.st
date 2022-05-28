as yet unclassified
testEllipse
	
	self hasValue: '100@120' atKey: 'Position' in: (SVGInfoPanelGenerator for: (self subject findByClass: SVGEllipseMorph)).
	self hasValue: '20' atKey: 'Horizontal Radius' in: (SVGInfoPanelGenerator for: (self subject findByClass: SVGEllipseMorph)).
	self hasValue: '50' atKey: 'Vertical Radius' in: (SVGInfoPanelGenerator for: (self subject findByClass: SVGEllipseMorph))