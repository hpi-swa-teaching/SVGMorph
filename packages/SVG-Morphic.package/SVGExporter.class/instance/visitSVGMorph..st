visiting
visitSVGMorph: aMorph

	self
		applyCommonAttributesOf: aMorph on: self document;
		applySVGAttributesOf: aMorph on: self document;
		serializeGradientsOf: aMorph on: self document;
		addSubmorphsOf: aMorph to: self document