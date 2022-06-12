actions
actionCloseFile

	self canCloseFile ifFalse: [^ self].
	self
		svg: nil