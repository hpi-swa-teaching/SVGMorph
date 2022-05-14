as yet unclassified
applyStyleFrom: aMorph on: anXMLElement

	aMorph style keysAndValuesDo: [ :key :value |
		((key = 'stroke') or: [key = 'fill'])
			ifTrue: [(value isColor)
				ifTrue: [value := value asHTMLColor]
				ifFalse: [self error: 'Gradients not supported yet']].
			
			anXMLElement attributeAt: key put: value asString]