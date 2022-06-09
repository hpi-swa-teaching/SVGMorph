as yet unclassified
testPolyline

	|panelInfo|
	panelInfo :=  SVGInfoPanelGenerator for: (self subject findByClass: SVGPolylineMorph).
		
	self 
		hasValue: 'Polyline' atKey: 'Type' in: panelInfo;
		hasValue: '0@100 50@25 50@75 100@0' atKey: 'Points' in: panelInfo