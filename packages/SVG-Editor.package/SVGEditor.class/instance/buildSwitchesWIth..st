toolbuilder
buildSwitchesWIth: aToolBuilder

	^ aToolBuilder pluggablePanelSpec new
		layout: #horizontal;
		children: {
			self buildOpenButtonWith: aToolBuilder .
			self buildSaveButtonWith: aToolBuilder .
			self buildCloseButtonWith: aToolBuilder};
		yourself