as yet unclassified
fromString: aString
	"creates SVGMorph from xml string"
	
	^ self fromFileStream:(ReadStream on: aString)
