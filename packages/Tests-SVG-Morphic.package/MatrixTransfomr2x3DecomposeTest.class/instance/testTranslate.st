test	ing - single
testTranslate

	{ 1 @ 1 . 1 @ 2 . 2 @ 1 .  -2 @ 1  .  1000 @ 5000 . 0 @ 1}
		do: [:aPoint | self assert: aPoint closeTo: (MatrixTransform2x3 withOffset: aPoint) compositeTranslation].