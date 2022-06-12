as yet unclassified
runsFromSegments: aCollection
	"Answer a collection of runs from the given segments."

	|answer str seg run runClass position|
	answer := OrderedCollection new.
	aCollection isEmpty
		ifTrue: [^answer].
	str := aCollection readStream.
	run := str next run.
	runClass := aCollection first runClass.
	position := aCollection first end.
	[str atEnd] whileFalse: [
		seg := str next.
		(seg runClass ~= runClass or: [seg start ~= position])
			ifTrue: [answer add: run.
					runClass := seg runClass.
					run := seg run]
			ifFalse: [run add: seg run].
		position := seg end].
	answer add: run.
	^answer