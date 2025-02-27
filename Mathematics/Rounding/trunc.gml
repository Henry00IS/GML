/// Removes the decimal part of a number without rounding.
/// @param {real} _val The input value to be truncated.
/// @returns {real} The truncated integer value.
function trunc(_val)
{
    return _val >= 0 ? floor(_val) : ceil(_val);
}