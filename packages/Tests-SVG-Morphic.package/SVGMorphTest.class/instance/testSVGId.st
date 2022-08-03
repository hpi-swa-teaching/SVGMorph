testing - properties
testSVGId

	|morph|

	self wantsToTestId.
	morph := self subject findByClass: SVGGroupMorph.

	self assert: 'someRandomId' equals: morph id