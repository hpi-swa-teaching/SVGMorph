toolbuilder
buildXMLInputWith: aToolBuilder

	^ aToolBuilder pluggableInputFieldSpec new
			model: self model;
			help: 'The xml string for the svg';
			getText: #svgString;
			setText: #svgString:;
			softLineWrap: true;
			yourself