testing
testActionOpenFile

	| editorSubclass path |
	editorSubclass := self getSubclassObject.
	path := '/path/to/svg'.
	self let: editorSubclass openAFileAt: path.
		
	self
		assert: editorSubclass path equals: path description: 'editor should have asked for the file with the given path';
		assert: editorSubclass svg notNil description: 'editor should have loaded an svg'
	