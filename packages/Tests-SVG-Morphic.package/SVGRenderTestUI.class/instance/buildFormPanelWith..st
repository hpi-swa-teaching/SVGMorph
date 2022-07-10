toolbuilder
buildFormPanelWith: aToolBuilder

	^ SVGPanelSpec new
		model: self model;
		name: #formPanel;
		children: #formMorph;
		yourself