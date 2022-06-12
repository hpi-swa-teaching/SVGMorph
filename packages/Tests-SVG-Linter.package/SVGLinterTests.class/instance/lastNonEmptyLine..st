private
lastNonEmptyLine: aCollection

	aCollection reverseDo: [:line | (line withBlanksTrimmed isEmpty)
		ifFalse: [^ line]].
	^ aCollection first