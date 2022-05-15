toolbuilder
buildCloseButtonWith: aToolBuilder

	^ aToolBuilder pluggableButtonSpec new
		model: self;
		label: 'Close';
		help: 'Close the currently opened file';
		enabled: #canCloseFile;
		action: #actionCloseFile;
		yourself	