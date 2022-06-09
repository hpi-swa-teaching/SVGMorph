as yet unclassified
testLine
	
	|panelData|
	panelData :=  SVGInfoPanelGenerator for: (self subject findByClass: SVGLineMorph).
	
	self 
		hasValue: 'Line' atKey: 'Type' in: panelData;
		hasValue: '20@30' atKey: 'Start' in: panelData;
		hasValue: '100@170' atKey: 'End' in: panelData