*SVG-Morphic
installFontFrom: aBase64Font

	TTCFont newTextStyleFromTTStream: (ReadStream on:(aBase64Font base64Decoded asByteArray)).