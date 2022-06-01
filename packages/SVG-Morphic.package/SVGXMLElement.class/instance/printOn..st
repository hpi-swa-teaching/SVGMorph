printing
printOn: stream

	self printXMLOn: ((XMLWriter on: stream)
		canonical: true;
		yourself)