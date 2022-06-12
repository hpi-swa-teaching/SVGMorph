initialization
createCircleFromSVGCircle: anElement
	"Create a circle from the svg circle."

	^ self create: SVGCircleMorph fromSVG: anElement