testing - existence
testSVGGroupExists

	| group |
	self wantsToTestGroup.
	
	group := self subject findByClass: SVGGroupMorph.
	self deny: group morphs isEmpty