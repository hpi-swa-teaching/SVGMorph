testing
testActionCloseFile

	self subject
		svg: #MockSVG;
		actionCloseFile.
		
	self
		assert: self subject svg equals: nil description: 'editor should have removed the svg'
	