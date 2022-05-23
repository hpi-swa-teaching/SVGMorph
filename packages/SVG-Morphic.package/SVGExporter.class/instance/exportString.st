exporting
exportString

	|stream|
	stream := WriteStream on: String new.
	self document printOn: stream.
	^ stream contents withBlanksTrimmed