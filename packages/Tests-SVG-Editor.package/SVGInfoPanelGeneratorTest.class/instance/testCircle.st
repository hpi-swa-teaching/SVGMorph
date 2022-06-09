as yet unclassified
testCircle
	
	|panelInfo|
	panelInfo :=  SVGInfoPanelGenerator for: (self subject findByClass: SVGCircleMorph).
	
	self 
		hasValue: 'Circle' atKey: 'Type' in: panelInfo;
		hasValue: '30@40' atKey: 'Position' in: panelInfo;
		hasValue: '60' atKey: 'Radius' in: panelInfo