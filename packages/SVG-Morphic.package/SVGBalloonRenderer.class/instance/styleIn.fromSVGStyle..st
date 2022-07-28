style
styleIn: aComponent fromSVGStyle: svgStyle
	"Answer a dictionary of the style parameters for the given svg style dictionary."

	| balloonStyle |
	balloonStyle := aComponent composedStyle.	
	self 
		setFontStyle: balloonStyle from: svgStyle;
		setFillStyle: balloonStyle from: svgStyle;
		setStrokeStyle: balloonStyle from: svgStyle;
		setDisplayVisibilityStyle: balloonStyle from: svgStyle.

	^ balloonStyle