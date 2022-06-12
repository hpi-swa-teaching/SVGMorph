accessing
selectedElement: anElement

	selectedElement := anElement.
	self
		changed: #selectedElement;
		changed: #infoForSelectedElement