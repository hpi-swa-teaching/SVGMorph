accessing
svgString: aString

	svgString := aString.
	self
		changed: #svgString;
		drawMorph