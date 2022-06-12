helpers
textForDisplayName

	^ (self text isEmpty)
		ifTrue: ['']
		ifFalse: [' ("' , self text , '")']