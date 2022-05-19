as yet unclassified
exportString

	| stream |
	stream := WriteStream on: String new.
	self exportOn: stream.
	^ stream contents withBlanksTrimmed.