toolbuilder
buildSwitchesWIth: aToolBuilder

	^ aToolBuilder pluggablePanelSpec new
		layout: #horizontal;
		children: {
				self buildOpenButtonWith: aToolBuilder .
				self buildCloseButtonWith: aToolBuilder
		};
		yourself