toolbuilder
buildDrawingAreaWith: aToolBuilder

	^ SVGPanelSpec new
		model: self;
		children: #svg;
		yourself