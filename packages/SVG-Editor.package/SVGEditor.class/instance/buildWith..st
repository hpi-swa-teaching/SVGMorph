toolbuilder
buildWith: aToolBuilder

	| window |
	window := self model buildWindowWith: aToolBuilder specs: {
		(self switchesFrame) -> (self buildSwitchesWIth: aToolBuilder) .
		(self panelDrawingFrame) -> (self buildDrawingAreaWith: aToolBuilder)
	}.

	^ aToolBuilder build: window