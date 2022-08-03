initialization
setStyleFromSVG: anElement
	"Set the dictionary of the style parameters from the element."

	|svgStyle|
	svgStyle := self styleFromSVG: anElement.
	self style addAll: svgStyle.
	SVGStyleComposer composeStyleFor: self with: svgStyle