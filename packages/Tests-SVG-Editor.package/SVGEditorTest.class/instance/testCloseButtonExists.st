testing
testCloseButtonExists

	| button |
	button := self subject findByName: #closeButton.
	self deny: button morphs isEmpty