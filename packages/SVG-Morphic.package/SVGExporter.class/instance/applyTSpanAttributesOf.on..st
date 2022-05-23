serializer
applyTSpanAttributesOf: aTSpan on: anElement
	
	anElement
		name: 'tspan'.
	(aTSpan location = aTSpan owner location) 
		ifFalse: [anElement 
					attributeAt: 'x' put: aTSpan location x asString;
					attributeAt: 'y' put: aTSpan location y asString].
	
		
		
		