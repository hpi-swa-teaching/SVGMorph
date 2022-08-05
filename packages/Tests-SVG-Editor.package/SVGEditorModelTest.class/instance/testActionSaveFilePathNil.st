testing
testActionSaveFilePathNil

	| editorSubclass stream |
	editorSubclass := self getSubclassObject.
	self let: editorSubclass openAFileAt: '/path/to/svg'.

	stream := WriteStream on: String new.
	self let: editorSubclass writeFileAt: nil to: stream.

	self
		assert: editorSubclass stream contents equals: '' description: 'editor not should create the file'
