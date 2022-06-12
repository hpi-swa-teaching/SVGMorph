toolbuilder
buildAndOpen

	|builder windowSpec|
	builder := ToolBuilder default.
	windowSpec := self buildWith: builder.
	builder open: windowSpec
