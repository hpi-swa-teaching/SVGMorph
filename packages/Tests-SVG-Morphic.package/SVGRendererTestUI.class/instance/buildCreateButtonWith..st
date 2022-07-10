toolbuilder
buildCreateButtonWith: aToolBuilder

	^ aToolBuilder pluggableButtonSpec new
		model: self model;
		name: #createTestButton;
		label: 'Create test';
		help: 'Create a test case for this svg';
		action: #actionCreateTest;
		enabled: #canCreateTest;
		yourself