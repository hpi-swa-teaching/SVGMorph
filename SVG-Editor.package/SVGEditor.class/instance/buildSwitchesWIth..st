toolbuilder
buildSwitchesWIth: aToolBuilder

	| panelSpec |
	panelSpec := aToolBuilder pluggablePanelSpec new
		layout: #horizontal;
		spacing: -1;
		children: {
				self buildOpenButtonWith: aToolBuilder .
				self buildCloseButtonWith: aToolBuilder
		};
		yourself.
	
	^ panelSpec