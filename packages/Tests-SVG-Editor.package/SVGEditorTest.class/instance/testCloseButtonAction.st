testing
testCloseButtonAction

	| button |
	self modelMock canCloseFile: true.
	self assert: self modelMock actionCloseFileCount equals: 0 description: 'button should not yet have called action close'.
	button := self subject findByName: #closeButton.
	button click.
	self assert: self modelMock actionCloseFileCount equals: 1 description: 'button should have called action close once'