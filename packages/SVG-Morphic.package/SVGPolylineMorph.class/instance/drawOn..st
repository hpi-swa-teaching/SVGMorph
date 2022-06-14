as yet unclassified
drawOn: aCanvas
	"Draw the component on the canvas."
	
	(self composedStyle at: 'visibility')
		ifFalse: [^self].
	self renderer
		renderPolyline: self
		on: aCanvas