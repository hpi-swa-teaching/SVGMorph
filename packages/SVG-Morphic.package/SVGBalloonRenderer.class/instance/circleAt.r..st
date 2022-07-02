helpers
circleAt: center r: radius

	^ ((0 to: 360 by: 90) overlappingPairsCollect: [:a :b |
		self bezier3UnitArcFrom: a to: b])
		gather: [:points | points collect: [:p | p * radius + center ]]
	