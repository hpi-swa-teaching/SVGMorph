toolbuilder
buildDrawingAreaWith: aToolBuilder

	^ SVGPanelSpec new
		model: self model;
		name: #drawingArea;
		children: #svg;
		yourself