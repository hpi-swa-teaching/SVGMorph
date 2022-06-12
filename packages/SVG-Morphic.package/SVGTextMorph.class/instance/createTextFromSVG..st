as yet unclassified
createTextFromSVG: anElement
	"Create the text from the svg text. Doesn't handle tspans yet!"

	self
		text: anElement characterData;
		location: (anElement attributeAt: 'x' ifAbsent: [0]) asSVGNumber @ (anElement attributeAt: 'y' ifAbsent: [0]) asSVGNumber
