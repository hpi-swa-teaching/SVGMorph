*SVG-Morphic
installDefaultSVGTextStyle

	(self actualTextStyles includesKey: #OpenSans)
	ifTrue: [^ self].

	TTCFont newTextStyleFromTTStream: (ReadStream on:(TextStyle openSansData base64Decoded asByteArray))
