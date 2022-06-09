testing - printing
testDisplayNameBasic

	| rectangle |
	self wantsToTestRectangle.
	
	rectangle := self subject findByClass: SVGRectMorph.
	self assert: 'Rectangle' equals: (rectangle displayName)