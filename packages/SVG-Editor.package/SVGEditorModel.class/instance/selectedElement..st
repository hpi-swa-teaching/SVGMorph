accessing
selectedElement: anObject
	
	selectedElement := anObject.
	self 
		changed: #selectedElement;
		changed: #infoForSelectedElement