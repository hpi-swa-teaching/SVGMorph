accessing
askSavePath

	^ UIManager default
		saveFilenameRequest: 'Save the svg to...'
		initialAnswer: 'unnamed.svg'