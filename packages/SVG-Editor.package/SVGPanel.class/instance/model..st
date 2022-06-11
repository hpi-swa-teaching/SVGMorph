accessing
model: anObject

	self model = anObject ifTrue: [^ self].

	self model ifNotNil: [self model removeDependent: self].
	model := anObject.
	self model addDependent: self