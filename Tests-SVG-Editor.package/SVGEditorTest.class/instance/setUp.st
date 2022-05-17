running
setUp

	| morph builder windowSpec |
	self modelMock: SVGEditorModelMock new.

	builder := MorphicToolBuilder new.
	windowSpec := SVGEditor new
		model: self modelMock;
		buildWith: builder.
	morph := builder build: windowSpec.
	self wantsToTest: morph.