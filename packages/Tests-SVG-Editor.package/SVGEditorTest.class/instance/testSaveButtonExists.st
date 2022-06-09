testing
testSaveButtonExists

	| button |
	button := self subject findByName: #saveButton.
	self deny: button morphs isEmpty