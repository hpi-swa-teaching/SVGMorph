accessing
formMorph

	self form ifNil: [^ nil].
	^ self form asMorph