helpers
primAddToEngine: aBalloonEngine fills: fills lineWidth: lineWidth
	"Add the receiver's description to the ballooon engine."

	aBalloonEngine
		primAddPolygon: self points
		segments: self segments size * 2
		fill: (fills first)
		lineWidth: 1
		lineFill: 0