testing
testActionOpenFilePathNil

	| editorSubclass |
	editorSubclass := self getSubclassObject.
	self let: editorSubclass openAFileAt: nil.
		
	self
		assert: editorSubclass svg isNil description: 'editor should not have loaded an svg'
	