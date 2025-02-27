/// Computes `val * 2^exp`, similar to the ldexp function in C.
/// @param {real} _val The base number to be scaled.
/// @param {real} _exp The exponent to raise 2 to.
/// @returns {real} The result of `val * 2^exp`.
function ldexp(_val, _exp) {
    return _val * power(2, _exp);
}