as yet unclassified
fileReaderServicesForFile: fullName suffix: suffix
	"registers the given class as providing services for reading files with Fileservices"

	^({ 'svg' . 'svgz' } includes: suffix)
		ifTrue: [ #() ]
		ifFalse: [ self services ]
