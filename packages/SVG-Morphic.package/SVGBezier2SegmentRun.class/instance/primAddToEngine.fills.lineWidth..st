helpers
primAddToEngine: aBalloonEngine fills: fills lineWidth: lineWidth
	"Add the receiver's description to the ballooon engine."

	aBalloonEngine
		primAddBezierShape: self points
		segments: self segments size
		fill: (fills first)
		lineWidth: lineWidth
		lineFill: (fills second)