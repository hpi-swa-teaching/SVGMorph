tests
saveForm: aForm as: aString

	|str|
	str := ByteArray new writeStream.
	(PNGReadWriter on: str) nextPutImage: aForm.
	SVGRenderTest compile: aString , '
	^ ''', str contents base64Encoded, ''' base64Decoded'