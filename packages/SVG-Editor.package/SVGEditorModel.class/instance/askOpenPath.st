accessing
askOpenPath

	^ UIManager default
		chooseFileMatchingSuffixes: {'svg' . 'svgz'}
		label: 'Choose an SVG file (.svg, .svgz)'