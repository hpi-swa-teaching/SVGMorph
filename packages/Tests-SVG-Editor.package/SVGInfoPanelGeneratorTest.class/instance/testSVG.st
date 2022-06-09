as yet unclassified
testSVG

	|panelInfo|
	panelInfo :=  SVGInfoPanelGenerator for: (self subject findByClass: SVGMorph).
		
	self 
		hasValue: 'SVG' atKey: 'Type' in: panelInfo