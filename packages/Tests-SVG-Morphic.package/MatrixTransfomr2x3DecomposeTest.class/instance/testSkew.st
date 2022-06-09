test	ing - single
testSkew

	{0 . 1 . 30 . 89  . -1 . -30 . -80 }
		do: [:anAngle | self assert: anAngle closeTo: (MatrixTransform2x3 withSkew: anAngle @ 0 ) compositeSkew].