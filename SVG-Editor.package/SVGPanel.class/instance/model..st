accessing
model: anObject
	
	self model = anObject ifTrue: [^ self].
	self model ifNil: [self model removeDependent: self].
	anObject addDependent: self.
	model := anObject