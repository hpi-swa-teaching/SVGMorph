as yet unclassified
textForDisplayName

	^ (self text isEmpty) 
		ifTrue: ['']
		ifFalse: [' ("' , self text , '")']