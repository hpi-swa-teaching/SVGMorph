helpers
saveForm: aForm as: aString

	|str|
	str := ByteArray new writeStream.
	(PNGReadWriter on: str) nextPutImage: aForm.
	self class compile: aString , '

	^ ''', str contents base64Encoded, ''' base64Decoded'.

	self class organization
		classify: aString asSymbol
		under: #'reference images'
		logged: false