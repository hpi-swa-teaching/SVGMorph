as yet unclassified
fromString:stringname
	"creates SVGMorph from xml string"
	^self fromFileStream:(ReadStream on: stringname)
	