/// Calculates the hyperbolic tangent (tanh) of a given real number.
/// The function is defined as: tanh(x) = (e^x - e^(-x)) / (e^x + e^(-x)).
/// @param {real} _val The input value for which to compute the hyperbolic tangent.
/// @returns {real} The computed hyperbolic tangent of the input.
function tanh(_val)
{
    var _ex = exp(_val);
    var _enx = exp(-_val);
    return (_ex - _enx) / (_ex + _enx);
}