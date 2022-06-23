testing - properties
submorphBoundsOf: aMorph

		^ ((aMorph submorphs collect: [:submorph | submorph bounds origin x]) asSortedArray first) @
			((aMorph submorphs collect: [:submorph | submorph bounds origin y]) asSortedArray first)
			corner: ((aMorph submorphs collect: [:submorph | submorph bounds corner x]) asSortedArray last) @
						((aMorph submorphs collect: [:submorph | submorph bounds corner y]) asSortedArray last)