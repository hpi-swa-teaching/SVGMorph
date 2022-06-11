testing
testSaveButtonAction

	|button|
	self modelMock canSaveFile: true.
	self assert: self modelMock actionSaveFileCount equals: 0 description: 'button should not yet have called action save'.
	button := self subject findByName: #saveButton.
	button click.
	self assert: self modelMock actionSaveFileCount equals: 1 description: 'button should have called action save once'