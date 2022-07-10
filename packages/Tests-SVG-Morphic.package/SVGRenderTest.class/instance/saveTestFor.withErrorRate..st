helpers
saveTestFor: aString withErrorRate: aNumber

	|methodName|
	methodName := 'testRender' , (aString copy at: 1 put: aString first asUppercase; yourself).
	self class compile: methodName , '

	^ self testRender: ''', aString , ''' errorRate: ', aNumber asString.

	self class organization
		classify: methodName asSymbol
		under: #'tests'
		logged: false