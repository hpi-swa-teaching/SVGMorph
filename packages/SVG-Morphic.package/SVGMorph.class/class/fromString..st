as yet unclassified
fromString:stringname
	"creates SVGMorph from xml string"
	|xmldocument sx doc|
	stringname ifNil: [^nil].
	"[aStream binary.
				sx := (GZipReadStream on: aStream contentsOfEntireFile) upToEnd asString readStream].
	(ReadStream on: aString contentsOfEntireFile)upTo End asString readStream)

		do: [:each | each = Character space ifTrue: [count := count + 1].
"
	xmldocument:= stringname.
	"sx := aStream.
	(aStream name endsWith: 'svgz')
		ifTrue: [aStream binary.
				sx := (GZipReadStream on: aStream contentsOfEntireFile) upToEnd asString readStream].
	doc :=(XMLDOMParser parseDocumentFrom: sx).
	^self new createFromSVGDocument: doc"
	sx:= (ReadStream on: stringname)upToEnd asString readStream.
	doc :=(XMLDOMParser parseDocumentFrom: sx).
	^self new createFromSVGDocument: doc.
	