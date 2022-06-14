testing - printing
testDisplayNameOfTSpan

	| text |
	self wantsToTestTSpan.
	
	text := self subject findByClass: SVGTSpanMorph.
	self assert: 'TSpan ("not")' equals: (text displayName)