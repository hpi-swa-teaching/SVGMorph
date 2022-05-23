as yet unclassified
increment: aSymbol

	self renderCount at: aSymbol put: (self renderCount at: aSymbol ifAbsent: 0 +1)