initialization
createEllipseFromSVGEllipse: anElement
	"Create an ellipse from the svg ellipse."

	^ self create: SVGEllipseMorph fromSVG: anElement