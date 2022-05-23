testing
testSaveButtonActionWithoutSVG

	| button |
	self modelMock canSaveFile: false.
	self assert: self modelMock actionSaveFileCount equals: 0 description: 'button should not yet have called action save'.
	button := self subject findByName: #saveButton.
	button click.
	self assert: self modelMock actionSaveFileCount equals: 0 description: 'button should not have called action save'