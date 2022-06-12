rendering
drawOn: aCanvas
	"Draw the component on the canvas."

	(self composedStyle at: 'visibility')
		ifFalse: [^self].
	self renderer
		renderRect: self
		on: aCanvas