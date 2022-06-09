accessing
idForDisplayName

	^ (self id isNil)
		ifTrue: ['']
		ifFalse: [' #' , self id]