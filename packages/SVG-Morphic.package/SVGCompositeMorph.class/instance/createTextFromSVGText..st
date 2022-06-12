initialization
createTextFromSVGText: anElement
	"Create a text from the svg text."

	^self create: SVGTextMorph fromSVG: anElement