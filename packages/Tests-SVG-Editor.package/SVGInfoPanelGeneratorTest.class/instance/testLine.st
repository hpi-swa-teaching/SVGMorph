as yet unclassified
testLine
	
	self hasValue: '20@30' atKey: 'Start' in: (SVGInfoPanelGenerator for: (self subject findByClass: SVGLineMorph)).
	self hasValue: '100@170' atKey: 'End' in: (SVGInfoPanelGenerator for: (self subject findByClass: SVGLineMorph))