helpers
transformed: aMatrix

	^ self class segments: (self segments collect: [:seg | seg transformedBy: aMatrix])