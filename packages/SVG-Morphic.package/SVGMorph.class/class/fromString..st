as yet unclassified
fromString:stringname
	"creates SVGMorph from xml string"
	|xmldocument sx doc|
	stringname ifNil: [^nil].
	xmldocument:= stringname.
	sx:= (ReadStream on: stringname)upToEnd asString readStream.
	doc :=(XMLDOMParser parseDocumentFrom: sx).
	^self new createFromSVGDocument: doc.
	