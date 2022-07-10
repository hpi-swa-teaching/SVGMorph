toolbuilder
buildWith: aToolBuilder

	|window|
	window := self model buildWindowWith: aToolBuilder specs: {
		(self switchesFrame) -> (self buildSwitchesWith: aToolBuilder) .
		(self panelDrawingFrame) -> (self buildDrawingAreaWith: aToolBuilder) .
		(self treeFrame) -> (self buildTreeViewWith: aToolBuilder) .
		(self infoPanelFrame) -> (self buildInfoPanelWith: aToolBuilder)
	}.

	^ aToolBuilder build: window