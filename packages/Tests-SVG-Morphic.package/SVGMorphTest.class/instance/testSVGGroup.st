testing - properties
testSVGGroup

	| bounds morph |
	
	self wantsToTestGroup.
	morph := self subject findByClass: SVGGroupMorph.
	bounds := morph bounds.
	
	self
		assert: ((morph submorphs collect: [:submorph| submorph bounds origin x]) asSortedArray first) equals: bounds origin x;
		assert: ((morph submorphs collect: [:submorph| submorph bounds origin y]) asSortedArray first) equals: bounds origin y ;
		assert: ((morph submorphs collect: [:submorph| submorph bounds corner x]) asSortedArray last)  equals: bounds corner x ;
		assert: ((morph submorphs collect: [:submorph| submorph bounds corner y]) asSortedArray last) equals: bounds corner y.
	