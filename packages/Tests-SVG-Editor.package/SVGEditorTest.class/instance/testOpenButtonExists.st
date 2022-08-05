testing
testOpenButtonExists

	|button|
	button := self subject findByName: #openButton.
	self deny: button morphs isEmpty