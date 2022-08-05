tests
testCorrectClassPrefix

	self classes do: [:aClass |
		((aClass class category = 'SVG-Morphic') or: [aClass class category = 'SVG-Editor'])
			ifTrue: [self assert: (aClass class name beginsWith: 'SVG')]]