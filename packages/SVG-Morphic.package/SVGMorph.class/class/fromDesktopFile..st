as yet unclassified
fromDesktopFile:filename
	"opens a Stream on a given file "

	| s answer |
	s := FileStream oldFileNamed: filename.
	[answer _ self fromFileStream: s]
		ensure: [s close].
	^answer
	