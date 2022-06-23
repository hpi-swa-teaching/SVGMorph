building
finalizeTestSVG: aSVGMorph

	aSVGMorph allMorphsDo: [:component | component computeBounds]