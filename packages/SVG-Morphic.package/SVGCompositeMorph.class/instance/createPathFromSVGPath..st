initialization
createPathFromSVGPath: anElement
	"Create a path from the svg path."

	^ self create: SVGPathMorph fromSVG: anElement