*SVG-Morphic
installDefaultSVGTextStyles
	
	(self hasFont: #serif) 
		ifFalse: [self installFontFrom: TextStyle serifData].
	(self hasFont: #'sans-serif') 
		ifFalse: [self installFontFrom: TextStyle sansData].