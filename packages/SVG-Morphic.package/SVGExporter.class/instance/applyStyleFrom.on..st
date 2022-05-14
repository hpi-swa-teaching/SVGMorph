as yet unclassified
applyStyleFrom: aMorph on: anXMLElement

	aMorph style keysAndValuesDo: [ :key :value |
		|convertedValue|
		convertedValue := value.
		((key = 'stroke') or: [key = 'fill'])
			ifTrue: [(value isColor)
				ifTrue: [convertedValue := value asHTMLColor]
				ifFalse: [self error: 'Gradients not supported yet']].
			
			anXMLElement attributeAt: key put: convertedValue asString]