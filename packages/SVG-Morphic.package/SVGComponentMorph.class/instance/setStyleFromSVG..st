as yet unclassified
setStyleFromSVG: anElement
	"Set the dictionary of the style parameters from the element."

	"self style
		addAll: (self renderer styleIn: self fromSVGStyle: (self styleFromSVG: anElement))"
	|svgStyle|
	svgStyle := self styleFromSVG: anElement.
	self style addAll: svgStyle.
	self renderer styleIn: self fromSVGStyle: svgStyle