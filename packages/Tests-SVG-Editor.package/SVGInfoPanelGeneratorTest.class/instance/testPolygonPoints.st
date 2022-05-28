as yet unclassified
testPolygonPoints
	
	self hasValue: '60@20 100@40 100@80 60@100 20@80 20@40' atKey: 'Points' in: (SVGInfoPanelGenerator for: (self subject findByClass: SVGPolygonMorph))