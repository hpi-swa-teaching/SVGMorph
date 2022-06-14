test	ing - single
testScale

	{ 1 @ 1 . 1 @ 2 . 2 @ 1 .  -2 @ 1  .  1000 @ 5000 . 0 @ 1 . 0.45 @ 0.867}
		do: [:aPoint | self assert: aPoint  closeTo: (MatrixTransform2x3 withScale: aPoint) compositeScale].