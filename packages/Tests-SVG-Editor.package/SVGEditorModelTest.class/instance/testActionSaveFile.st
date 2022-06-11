testing
testActionSaveFile

	| editorSubclass path stream |
	editorSubclass := self getSubclassObject.
	self let: editorSubclass openAFileAt: '/path/to/svg'.

	path := '/path/to/saved/svg'.
	stream := WriteStream on: String new.
	self let: editorSubclass writeFileAt: path to: stream.

	self
		assert: editorSubclass path equals: path description: 'editor should have asked to create the file with the given path';
		assert: (editorSubclass stream contents ~= '')
