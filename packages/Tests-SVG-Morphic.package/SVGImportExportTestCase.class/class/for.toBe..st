instance creation
for: aString toBe: anotherString

	^ self new
		input: aString;
		expected: anotherString;
		yourself