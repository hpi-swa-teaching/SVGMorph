testing - printing
testDisplayNameWithId

	| circle |
	self wantsToTestCircle.
	
	circle := self subject findByClass: SVGCircleMorph.
	self assert: 'Circle #TestCircle' equals: (circle displayName)