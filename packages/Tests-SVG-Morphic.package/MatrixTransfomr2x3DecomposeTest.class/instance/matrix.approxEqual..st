helpers
matrix: aMatrixTransform approxEqual: otherMatrixTransform

	otherMatrixTransform size = aMatrixTransform size ifFalse: [^ false].
	1 to: otherMatrixTransform size do: [:i | ((otherMatrixTransform at: i)
			closeTo: (aMatrixTransform at: i)) ifFalse: [^ false]].
	^ true