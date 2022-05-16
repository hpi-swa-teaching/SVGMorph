toolbuilder
buildSaveButtonWith: aToolBuilder

	^ aToolBuilder pluggableButtonSpec new
		model: self;
		label: 'Save';
		help: 'Save the SVG to a file';
		enabled: #canSaveFile;
		action: #actionSaveFile;
		yourself	