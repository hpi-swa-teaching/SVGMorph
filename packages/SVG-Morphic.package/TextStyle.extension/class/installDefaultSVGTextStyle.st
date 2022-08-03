*SVG-Morphic
installDefaultSVGTextStyle

	((self actualTextStyles includesKey: #serif) and: [self actualTextStyles includesKey: #'sans-serif'])
	ifTrue: [^ self].
	
	self 
		installFontFrom: TextStyle sansData;
		installFontFrom: TextStyle serifData.
