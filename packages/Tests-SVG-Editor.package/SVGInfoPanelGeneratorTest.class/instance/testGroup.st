as yet unclassified
testGroup

	|panelInfo|
	panelInfo :=  SVGInfoPanelGenerator for: (self subject findByClass: SVGGroupMorph).
		
	self 
		hasValue: 'Group' atKey: 'Type' in: panelInfo