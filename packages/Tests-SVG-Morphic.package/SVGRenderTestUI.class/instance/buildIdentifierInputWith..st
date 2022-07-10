toolbuilder
buildIdentifierInputWith: aToolBuilder

	^ aToolBuilder pluggableInputFieldSpec new
			model: self model;
			help: 'The identifier for this the new test';
			getText: #identifier;
			setText: #identifier:;
			softLineWrap: false;
			yourself
