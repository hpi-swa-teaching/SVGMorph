printing
printXMLOn: writer
	"Print the receiver in XML form and enforce self-closing tags if possible (i.e. the element is not empty), even if the writer is in canonical mode"

	writer startElement: self name attributeList: self attributes.
	(self isEmpty)
		ifTrue: [writer endEmptyTag: self name]
		ifFalse: [
			writer endTag.
			self elementsAndContentsDo: [:content | content printXMLOn: writer].
			writer endTag: self name]