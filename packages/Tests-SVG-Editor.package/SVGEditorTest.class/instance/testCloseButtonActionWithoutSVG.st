testing
testCloseButtonActionWithoutSVG

	| button |
	self modelMock canCloseFile: false.
	self assert: self modelMock actionCloseFileCount equals: 0 description: 'button should not yet have called action close'.
	button := self subject findByName: #closeButton.
	button click.
	self assert: self modelMock actionCloseFileCount equals: 0 description: 'button should not have called action close'