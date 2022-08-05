fileIn/Out
fileReaderServicesForFile: fullName suffix: suffix
	"registers the given class as providing services for reading files with Fileservices"

	^ ({'svg' . 'svgz'} includes: suffix)
		ifTrue: [self services]
		ifFalse: [#()]