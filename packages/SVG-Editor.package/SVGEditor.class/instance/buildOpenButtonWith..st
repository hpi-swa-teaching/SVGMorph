toolbuilder
buildOpenButtonWith: aToolBuilder

	^ aToolBuilder pluggableButtonSpec new
		model: self model;
		name: #openButton;
		label: 'Open';
		help: 'Open an SVG file for editing';
		action: #actionOpenFile;
		yourself