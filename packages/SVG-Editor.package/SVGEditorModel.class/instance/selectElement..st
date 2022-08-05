accessing
selectElement: anElement

	|current path|
	path := OrderedCollection new.
	current := anElement.
	path addFirst: current.
	[current = self svg]
		whileFalse: [current := current owner.
			path addFirst: current].
	self selectedPath: path