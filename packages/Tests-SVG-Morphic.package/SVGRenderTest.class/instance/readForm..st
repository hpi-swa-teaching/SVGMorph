helpers
readForm: aString

	^ (PNGReadWriter on: (self perform: aString asSymbol) asByteArray readStream)
		nextImage