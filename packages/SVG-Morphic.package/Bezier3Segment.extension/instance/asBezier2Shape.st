*SVG-Morphic
asBezier2Shape
	"Demote a cubic bezier to a set of four approximating quadratic beziers.
	Answer the point array"

	|pts pa pb d c1 c2 c3 c4 a1 a2 a3|
	pts := PointArray new: 12.
	pa := start interpolateTo: via1 at: 3/4.
	pb := end interpolateTo: via2 at: 3/4.
	d := end  - start / 16.
	c1 := start interpolateTo: via1 at: 3/8.
	c2 := (pa interpolateTo: pb at: 3/8) - d.
	c3 := (pb interpolateTo: pa at: 3/8) + d.
	c4 := end interpolateTo: via2 at: 3/8.
	a1 := c1 interpolateTo: c2 at: 1/2.
	a2 := pa interpolateTo: pb at: 1/2.
	a3 := c3 interpolateTo: c4 at: 1/2.
	pts
		at: 1 put: start;
		at: 2 put: c1;
		at: 3 put: a1;
		at: 4 put: a1;
		at: 5 put: c2;
		at: 6 put: a2;
		at: 7 put: a2;
		at: 8 put: c3;
		at: 9 put: a3;
		at: 10 put: a3;
		at: 11put: c4;
		at: 12 put: end.
	^pts
