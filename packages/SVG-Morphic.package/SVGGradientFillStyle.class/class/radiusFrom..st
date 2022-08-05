attribute parsing
radiusFrom: anElement

	^ anElement attributeAt: 'r' ifAbsent: self defaultRadius