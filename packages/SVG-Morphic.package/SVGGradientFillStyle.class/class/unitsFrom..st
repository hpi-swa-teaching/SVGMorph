attribute parsing
unitsFrom: anElement

	^ anElement attributeAt: 'gradientUnits' ifAbsent: (self defaultUnits) asSymbol