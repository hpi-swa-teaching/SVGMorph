helpers
stroke: aNumber transform: aTransform

	^ { ((self offsetBy: aNumber / 2) transformed: aTransform) points
		 . ((self offsetBy: aNumber / 2 negated) transformed: aTransform) points }