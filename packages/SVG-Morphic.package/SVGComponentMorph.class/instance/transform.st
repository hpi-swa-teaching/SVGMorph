accessing
transform
	^ transform ifNil: [transform := MatrixTransform2x3 identity]