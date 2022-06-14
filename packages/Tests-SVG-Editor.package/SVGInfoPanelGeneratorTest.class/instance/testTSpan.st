as yet unclassified
testTSpan
	
	|panelInfo|
	panelInfo :=  SVGInfoPanelGenerator for: (self subject findByClass: SVGTSpanMorph).
		
	self 
		hasValue: 'TSpan' atKey: 'Type' in: panelInfo;
		hasValue: 'Test2' atKey: 'Text' in: panelInfo