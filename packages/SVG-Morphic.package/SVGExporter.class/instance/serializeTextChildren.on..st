serializer
serializeTextChildren: aText on: anElement
	
	aText text = '' 
		ifTrue: [	self addSubmorphsOf: aText to: anElement]
		ifFalse: [anElement addElement: (XMLStringNode string: aText text)].