as yet unclassified
drawOn: aCanvas
	"Draw the component on the canvas."
	
	(self composedStyle at: 'visibility')
		ifFalse: [^self].
	self renderer
		renderPolygon: self
		on: aCanvas