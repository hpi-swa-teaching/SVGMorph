as yet unclassified
testEllipse

	|panelInfo|
	panelInfo :=  SVGInfoPanelGenerator for: (self subject findByClass: SVGEllipseMorph).
	
	self 
		hasValue: 'Ellipse' atKey: 'Type' in: panelInfo;
		hasValue: '100@120' atKey: 'Position' in: panelInfo;
		hasValue: '20' atKey: 'Horizontal Radius' in: panelInfo;
		hasValue: '50' atKey: 'Vertical Radius' in: panelInfo