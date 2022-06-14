test	ing - single
testRotation

	{0 . 1 . 30 . 90  . 120 . 179 . 180 . -1 . -89 . -90 . -120 }
		do: [:anAngle | self assert: anAngle closeTo: (MatrixTransform2x3 withAngle: anAngle) compositeRotation].