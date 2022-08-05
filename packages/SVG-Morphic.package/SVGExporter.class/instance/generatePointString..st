helpers
generatePointString: aCollectionOfPoints

	|svgPoints|
	svgPoints := aCollectionOfPoints collect: [:point | point x asString , ',' , point y asString].
	^ svgPoints joinSeparatedBy: ' '