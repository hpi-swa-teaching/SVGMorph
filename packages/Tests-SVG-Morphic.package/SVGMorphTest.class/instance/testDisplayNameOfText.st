testing - printing
testDisplayNameOfText

	| text |
	self wantsToTestText.
	
	text := self subject findByClass: SVGTextMorph.
	self assert: 'Text ("Test")' equals: (text displayName)