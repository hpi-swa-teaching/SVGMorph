testing
testDrawingAreaExists

	| button |
	button := self subject findByName: #drawingArea.
	self deny: button morphs isEmpty