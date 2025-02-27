/// Calculates the hyperbolic cosine (cosh) of a given real number.
/// The function is defined as: cosh(x) = (e^x + e^(-x)) / 2.
/// @param {real} _val The input value for which to compute the hyperbolic cosine.
/// @returns {real} The computed hyperbolic cosine of the input.
function cosh(_val)
{
    return (exp(_val) + exp(-_val)) / 2;
}