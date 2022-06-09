helpers
readPointsOf: aPolygonalMorph

	self at: 'Points' put: (aPolygonalMorph points joinSeparatedBy: ' ')
	