serializer
serializeGradientsOf: anSVGMorph on: anXMLElement

	anSVGMorph fills isEmpty ifFalse: [
		|defs|
		defs := XMLElement new
			name: 'defs'.
		anSVGMorph fills do: [:fill |
			defs addElement: fill originalElement].
		anXMLElement addElement: defs]