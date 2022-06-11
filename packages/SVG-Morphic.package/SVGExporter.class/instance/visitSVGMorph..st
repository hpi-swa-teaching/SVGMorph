visiting
visitSVGMorph: aMorph

	self applyCommonAttributesOf: aMorph on: self document.
	self applySVGAttributesOf: aMorph on: self document.
	self addSubmorphsOf: aMorph to: self document