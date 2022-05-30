as yet unclassified
testText
	
	|panelInfo|
	panelInfo :=  SVGInfoPanelGenerator for: (self subject findByClass: SVGTextMorph).
		
	self 
		hasValue: 'Text' atKey: 'Type' in: panelInfo;
		hasValue: 'Test' atKey: 'Text' in: panelInfo