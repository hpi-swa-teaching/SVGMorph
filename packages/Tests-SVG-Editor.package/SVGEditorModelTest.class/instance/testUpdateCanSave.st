testing
testUpdateCanSave

	self
		assert: self updateObjects isEmpty description: 'test initialization failed, updateObjects should be empty';
		assert: self subject canSaveFile not description: 'editor without svg should not be able to save a file'.

	self subject
		addDependent: self;
		svg: #MockSVG.

	self
		assert: self updateObjects notEmpty description: 'editor should have called changed at least once';
		assert: (self updateObjects includes: #canSaveFile) description: 'editor should have called changed: #canSaveFile';
		assert: self subject canSaveFile description: 'editor with svg should allow saving the file'