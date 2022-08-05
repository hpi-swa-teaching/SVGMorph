attribute parsing
spreadFrom: anElement

	^ (anElement attributeAt: 'spreadMethod' ifAbsent: self defaultSpread) asSymbol