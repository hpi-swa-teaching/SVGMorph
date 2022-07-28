as yet unclassified
styleIn: aComponent fromSVGStyle: svgStyle
	"Answer a dictionary of the style parameters for the given svg style dictionary."

	| balloonStyle |
	balloonStyle := aComponent composedStyle.	
	self 
		setFontStyle;
		setFillStyle;
		setStrokeStyle;
		setDisplayVisibilityStyle.

	^ balloonStyle