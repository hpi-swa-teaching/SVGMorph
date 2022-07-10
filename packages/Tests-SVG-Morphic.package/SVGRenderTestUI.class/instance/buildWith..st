toolbuilder
buildWith: aToolBuilder

	|window|
	window := self model buildWindowWith: aToolBuilder specs: {
		(self identifierInputFrame) -> (self buildIdentifierInputWith: aToolBuilder) . 
		(self xmlInputFrame) -> (self buildXMLInputWith: aToolBuilder) .
		(self formFrame) -> (self buildFormPanelWith: aToolBuilder) .
		(self createButtonFrame) -> (self buildCreateButtonWith: aToolBuilder)
	}.
	
	^ aToolBuilder build: window