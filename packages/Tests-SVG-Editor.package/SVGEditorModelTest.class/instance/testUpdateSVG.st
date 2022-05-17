testing
testUpdateSVG

	self
		assert: self updateObjects isEmpty description: 'test initialization failed, updateObjects should be empty';
		assert: self subject svg equals: nil description: 'object initialization failed, svg should be nil'.

	self subject
		addDependent: self;
		svg: #MockSVG.

	self
		assert: self updateObjects notEmpty description: 'editor should have called changed at least once';
		assert: (self updateObjects includes: #svg) description: 'editor should have called changed: #svg';
		assert: self subject svg equals: #MockSVG description: 'editor should have updated its svg value'