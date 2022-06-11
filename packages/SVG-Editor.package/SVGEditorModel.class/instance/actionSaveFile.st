actions
actionSaveFile

	| filename stream |
	self canSaveFile ifFalse: [^self].

	filename := self askSavePath.
	filename ifNil: [^ self].
	stream := self getWriteStreamForFileNamed: filename.

	[SVGExporter new
		visitSVGMorph: self svg;
		exportOn: stream]
		ensure: [stream close]