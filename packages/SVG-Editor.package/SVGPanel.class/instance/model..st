accessing
model: aModel

	self model = aModel ifTrue: [^ self].

	self model ifNotNil: [self model removeDependent: self].
	model := aModel.
	self model addDependent: self