test cases
gradientTestCase

	^ SVGImportExportTestCase
		for: '<svg viewBox="0 0 200 200" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
			<defs>
				<linearGradient id="myGradient" gradientTransform="rotate(90)">
					<stop offset="0%" stop-color="yellow" />
					<stop offset="95%" stop-color="red" />
				</linearGradient>
			</defs>

			<circle cx="50" cy="50" r="40" fill="url(#myGradient)" />
		</svg>'
		toBe: '<svg version="1.1" viewBox="0 0 200 200" xmlns="http://www.w3.org/2000/svg"><defs><linearGradient gradientTransform="rotate(90)" id="myGradient"><stop offset="0%" stop-color="yellow"></stop><stop offset="95%" stop-color="red"></stop></linearGradient></defs><circle cx="50" cy="50" fill="url(#myGradient)" r="40"/></svg>'