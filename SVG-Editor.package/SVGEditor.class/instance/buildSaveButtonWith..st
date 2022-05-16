toolbuilder
buildSaveButtonWith: aToolBuilder

	^ aToolBuilder pluggableButtonSpec new
		model: self;
		label: 'Save';
		help: 'Save the esvg to file';
		enabled: #canSaveFile;
		action: #actionSaveFile;
		yourself	