testing - properties
testSVGNestedOpacity

	|svg firstGroup secondGroup thirdGroup|

	self wantsToTestNestedOpacity.
	svg := self subject.
	firstGroup := svg submorphs first.
	secondGroup := firstGroup submorphs first.
	thirdGroup := secondGroup submorphs first.
	
	self
		assert: (svg composedStyle at: 'fill') equals: Color black;
		assert: (firstGroup submorphs second composedStyle at: 'fill') equals: ((Color black) alphaMixed: 0.5);
		assert: (secondGroup submorphs second composedStyle at: 'fill') equals: ((Color black) alphaMixed: 0.5);
		assert: (thirdGroup submorphs first composedStyle at: 'fill') equals: ((Color black) alphaMixed: 0.25)