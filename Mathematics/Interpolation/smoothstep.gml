/// Smoothly interpolates between 0 and 1 over a given range using a cubic Hermite curve.
/// @param {real} _min The lower bound of the input range.
/// @param {real} _max The upper bound of the input range.
/// @param {real} _val The input value to interpolate.
/// @return {real} A smoothed value between 0 and 1.
function smoothstep(_min, _max, _val) {
    if _val <= _min {
        return 0;
    } else if _val >= _max {
        return 1;
    } else {
        var t = (_val - _min) / (_max - _min);
        return t * t * (3 - 2 * t);
    }
}