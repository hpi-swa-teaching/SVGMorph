toolbuilder
createButtonFrame

	^ LayoutFrame new
		leftFraction: 0 offset: 0;
		topFraction: 1 offset: -1 * self buttonHeight;
		rightFraction: 1 offset: 0;
		bottomFraction: 1 offset: 0;
		yourself