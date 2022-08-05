serializer
addSubmorphsOf: aGroup to: anElement

	aGroup submorphs reversed do: [:morph |
		anElement addElement: (morph accept: self)]