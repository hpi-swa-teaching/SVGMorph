as yet unclassified
testRectangle
	
	|panelInfo|
	panelInfo :=  SVGInfoPanelGenerator for: (self subject findByClass: SVGRectMorph).
	
	self 
		hasValue: 'Rectangle' atKey: 'Type' in: panelInfo;
		hasValue: '100@100' atKey: 'Position' in: panelInfo;
		hasValue: '60' atKey: 'Width' in: panelInfo;
		hasValue: '50' atKey: 'Height' in: panelInfo