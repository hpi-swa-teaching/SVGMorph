testing-helpers
let: anEditor openAFileAt: aFilePath

	| stream |
	stream := ReadStream on: '<svg width="123" height="456" version="1.1" xmlns="http://www.w3.org/2000/svg"><g id="someRandomId"></g></svg>'.
	
	anEditor
		path: aFilePath;
		stream: stream;
		actionOpenFile