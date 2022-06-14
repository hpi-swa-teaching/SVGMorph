*SVG-Morphic
installDefaultSVGTextStyle
"OpenSans is a unlimitedly scalable ttcFont in comparison to limitedly scalable strikeFonts"

	(self actualTextStyles includesKey: #OpenSans)
	ifTrue: [^ self].
	
	TTCFont newTextStyleFromTTStream: (ReadStream on:(TextStyle openSansData base64Decoded asByteArray)).
	