helpers
ringAt: p r: r b: b 

	^ ((OrderedCollection newFrom: (self circleAt: p r: (r + (b/2)))) addAll: (self circleAt: p r: (r - (b/2))); yourself) asArray