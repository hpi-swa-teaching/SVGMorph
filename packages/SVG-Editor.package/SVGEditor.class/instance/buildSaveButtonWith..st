toolbuilder
buildSaveButtonWith: aToolBuilder

	^ aToolBuilder pluggableButtonSpec new
		model: self model;
		name: #saveButton;
		label: 'Save';
		help: 'Save the SVG to a file';
		enabled: #canSaveFile;
		action: #actionSaveFile;
		yourself