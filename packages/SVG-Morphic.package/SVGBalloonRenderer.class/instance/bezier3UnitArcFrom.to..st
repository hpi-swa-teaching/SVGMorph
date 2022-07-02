helpers
bezier3UnitArcFrom: startAngle to: endAngle

	|controlDistance c1 c2 c3 c4|
	
	controlDistance := 4 / 3 * (endAngle - startAngle / 4) degreeTan. 
	
	c1 := Point r: 1 degrees: startAngle negated.
	c4 := Point r: 1 degrees: endAngle negated.
	
	c2 := c1 + (c1 leftRotated * controlDistance ).
	c3 := c4 + (c4 rightRotated * controlDistance ).
	
	^ { c1 . c2 . c3 . c4 }