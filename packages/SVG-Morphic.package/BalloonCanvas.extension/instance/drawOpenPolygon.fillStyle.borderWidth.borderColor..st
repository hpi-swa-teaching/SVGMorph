*SVG-Morphic
drawOpenPolygon: vertices fillStyle: aFillStyle borderWidth: borderWidth borderColor: borderColor
	"Draw a simple polygon defined by the list of vertices."
	| fillC borderC |
	fillC := self shadowColor ifNil:[aFillStyle].
	borderC := self shadowColor ifNil:[borderColor].
	self ensuredEngine
		drawPolygon: vertices
		fill: fillC
		borderWidth: borderWidth
		borderColor: borderC
		transform: transform