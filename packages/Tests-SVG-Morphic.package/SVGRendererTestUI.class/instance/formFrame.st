toolbuilder
formFrame

	^ LayoutFrame new
		leftFraction: 0.3 offset: 0;
		topFraction: 0 offset: self buttonHeight;
		rightFraction: 1 offset: 0;
		bottomFraction: 1 offset: -1 * self buttonHeight;
		yourself