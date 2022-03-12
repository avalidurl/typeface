// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./typeface/Typeface.sol";

contract CapsuleTypeface is Typeface {
    function isAllowedByte(bytes1 b) external pure returns (bool) {
        // All basic Latin letters, digits, symbols, punctuation
        return b >= 0x20 && b <= 0x7E;
    }

    constructor() Typeface("Capsule") {
        _fontSrc[400][bytes32("regular")] = REGULAR_400;
    }

    bytes private constant REGULAR_400 =
        "data:font/truetype;charset=utf-8;base64,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";
}
