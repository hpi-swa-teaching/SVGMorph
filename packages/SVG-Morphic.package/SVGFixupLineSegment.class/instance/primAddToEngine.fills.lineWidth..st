helpers
primAddToEngine: aBalloonEngine fills: fills lineWidth: lineWidth
	"Add the receiver's description to the ballooon engine."

	aBalloonEngine
		primAddPolygon: {self start . self end}
		segments: 2
		fill: (fills at: 1)
		lineWidth: 1
		lineFill: 0