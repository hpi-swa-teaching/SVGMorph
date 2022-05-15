toolbuilder
buildOpenButtonWith: aToolBuilder

	^ aToolBuilder pluggableButtonSpec new
		model: self;
		label: 'Open';
		help: 'Open an SVG file for editing';
		action: #actionOpenFile;
		yourself	