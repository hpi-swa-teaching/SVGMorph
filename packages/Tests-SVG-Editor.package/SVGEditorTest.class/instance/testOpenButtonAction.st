testing
testOpenButtonAction

	| button |
	self assert: self modelMock actionOpenFileCount equals: 0 description: 'button should not yet have called action open'.
	button := self subject findByName: #openButton.
	button click.
	self assert: self modelMock actionOpenFileCount equals: 1 description: 'button should have called action open once'