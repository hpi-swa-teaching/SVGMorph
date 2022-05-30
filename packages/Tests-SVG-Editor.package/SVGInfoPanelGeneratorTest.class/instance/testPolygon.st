as yet unclassified
testPolygon

	|panelInfo|
	panelInfo :=  SVGInfoPanelGenerator for: (self subject findByClass: SVGPolygonMorph).
		
	self 
		hasValue: 'Polygon' atKey: 'Type' in: panelInfo;
		hasValue: '60@20 100@40 100@80 60@100 20@80 20@40' atKey: 'Points' in: panelInfo