accessing
selectElement: anElement
	
	|current|
	selectedPath := OrderedCollection new.
	current := anElement.
	selectedPath addFirst: current.
	[current = self svg]
		whileFalse: [current := current owner.
			selectedPath addFirst: current].
	self changed: #selectedPath