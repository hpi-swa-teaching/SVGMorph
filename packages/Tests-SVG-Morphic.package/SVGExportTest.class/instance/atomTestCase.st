test cases
atomTestCase

	^  SVGExportTestCase 
		for: 
'<svg xmlns="http://www.w3.org/2000/svg" viewBox="-52 -53 100 100" stroke-width="2">
 <g fill="none">
  <ellipse stroke="#66899a" rx="6" ry="44"/>
  <ellipse stroke="#e1d85d" rx="6" ry="44" transform="rotate(-66)"/>
  <ellipse stroke="#80a3cf" rx="6" ry="44" transform="rotate(66)"/>
  <circle  stroke="#4b541f" r="44"/>
 </g>
 <g fill="#66899a" stroke="white">
  <circle fill="#80a3cf" r="13"/>
  <circle cy="-44" r="9"/>
  <circle cx="-40" cy="18" r="9"/>
  <circle cx="40" cy="18" r="9"/>
 </g>
</svg>'
		toBe: 
 '<svg stroke-width="2" version="1.1" viewBox="-52 -53 100 100" xmlns="http://www.w3.org/2000/svg"><g fill="#00000000"><ellipse cx="0" cy="0" rx="6" ry="44" stroke="#66899A"/><ellipse cx="0" cy="0" rx="6" ry="44" stroke="#E1D85D" transform="rotate(-66)"/><ellipse cx="0" cy="0" rx="6" ry="44" stroke="#80A3CF" transform="rotate(66)"/><circle cx="0" cy="0" r="44" stroke="#4B541F"/></g><g fill="#66899A" stroke="#FFFFFF"><circle cx="0" cy="0" fill="#80A3CF" r="13"/><circle cx="0" cy="-44" r="9"/><circle cx="-40" cy="18" r="9"/><circle cx="40" cy="18" r="9"/></g></svg>'