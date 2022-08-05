actions
actionOpenFile

	|filename stream|
	filename := self askOpenPath.
	filename ifNil: [^ self].
	stream := self getReadStreamForFileNamed: filename.

	[self svg: (SVGMorph fromFileStream: stream)]
		ensure: [stream close]
