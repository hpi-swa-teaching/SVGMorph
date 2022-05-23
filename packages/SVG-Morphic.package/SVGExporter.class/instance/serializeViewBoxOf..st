helpers
serializeViewBoxOf: aMorph

	^ aMorph bounds origin x asString ,
		' ' ,
		aMorph bounds origin y asString ,
		' ' ,
		aMorph bounds width asString ,
		' ' ,
		aMorph bounds height asString