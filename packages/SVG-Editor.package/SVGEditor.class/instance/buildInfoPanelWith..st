toolbuilder
buildInfoPanelWith: aToolBuilder

	^ aToolBuilder pluggableMultiColumnListSpec new
		name: #infoPanel;
		model: self model;
		list: #infoForSelectedElement.
		