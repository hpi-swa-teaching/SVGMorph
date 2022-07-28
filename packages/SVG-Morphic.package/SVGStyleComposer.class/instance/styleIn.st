as yet unclassified
styleIn
	"Answer a dictionary of the style parameters for the given svg style dictionary."
	self 
		setFontStyle;
		setFillStyle;
		setStrokeStyle;
		setDisplayVisibilityStyle.

	^ self balloonStyle