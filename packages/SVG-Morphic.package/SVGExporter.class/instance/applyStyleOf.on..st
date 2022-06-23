serializer
applyStyleOf: aMorph on: anXMLElement

	aMorph style keysAndValuesDo: [:key :value |
		|convertedValue|
		convertedValue := value.
		((key = 'stroke') or: [key = 'fill'])
			ifTrue: [(value isColor)
				ifTrue: [convertedValue := value asHTMLColor]
				ifFalse: [ convertedValue := self urlForGradient: value]].

			anXMLElement attributeAt: key put: convertedValue asString]