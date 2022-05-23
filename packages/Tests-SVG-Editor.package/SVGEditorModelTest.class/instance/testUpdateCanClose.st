testing
testUpdateCanClose

	self
		assert: self updateObjects isEmpty description: 'test initialization failed, updateObjects should be empty';
		assert: self subject canCloseFile not description: 'editor without svg should not be able to close a file'.

	self subject
		addDependent: self;
		svg: #MockSVG.

	self
		assert: self updateObjects notEmpty description: 'editor should have called changed at least once';
		assert: (self updateObjects includes: #canCloseFile) description: 'editor should have called changed: #canCloseFile';
		assert: self subject canCloseFile description: 'editor with svg should allow closing the file'