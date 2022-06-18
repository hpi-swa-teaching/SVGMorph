helpers
getOffsetFromBeziers: curves by: x

	|points segment|
	
	points := OrderedCollection new.
	
	curves groupsOf: 4 atATimeDo: [ :a :b :c :d|
		segment := (Bezier3Segment from: a via: b and: c to: d).
		(0 to: 1 by: 0.04) do: [ :t| points add: ((segment valueAt: t) + (((segment tangentAt: t) leftRotated) normalized * x))]		
		
	].

curves reversed groupsOf: 4 atATimeDo: [ :a :b :c :d|
		segment := (Bezier3Segment from: a via: b and: c to: d).
		(0 to: 1 by: 0.04) do: [ :t | points add: ((segment valueAt: t) + (((segment tangentAt: t) leftRotated) normalized * x))]		
		
	].

 ^  points asArray

	