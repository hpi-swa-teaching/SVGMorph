toolbuilder
buildWith: aToolBuilder

	| window |
	window := self buildWindowWith: aToolBuilder specs: {
		(self switchesFrame) -> (self buildSwitchesWIth: aToolBuilder) .
		(self panelDrawingFrame) -> (self buildDrawingAreaWith: aToolBuilder)
	}.

	^ aToolBuilder build: window