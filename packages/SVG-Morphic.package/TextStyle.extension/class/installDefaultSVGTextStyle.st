*SVG-Morphic
installDefaultSVGTextStyle

	((self actualTextStyles includesKey: #serif) and: [self actualTextStyles includesKey: #'sans-serif'])
	ifTrue: [^ self].

	TTCFont newTextStyleFromTTStream: (ReadStream on:(TextStyle sansData base64Decoded asByteArray)).
	TTCFont newTextStyleFromTTStream: (ReadStream on:(TextStyle serifData base64Decoded asByteArray))
