/// Creates a vector containing 2 `real` values.
/// @param {real} _x The x-component of the vector.
/// @param {real} _y The y-component of the vector.
function real2(_x = 0, _y = 0) constructor {
    x = _x;
    y = _y;
    
    /// Returns a new `real2` with `self` + `other`.
    /// @param {struct.real2} _other The secondary vector for this math operation.
    /// @returns {struct.real2} The resulting vector.
    static add = function (_other) {
        return new real2(
            x + _other.x,
            y + _other.y
        );
    }
    
    /// Sets this `real2` to the result of `self` + `other`.
    /// @param {struct.real2} _other The secondary vector for this math operation.
    static self_add = function (_other) {
        x += _other.x;
        y += _other.y;
    }
    
    /// Returns a new `real2` with `self` + `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {struct.real2} The resulting vector.
    static add_real = function (_other) {
        return new real2(
            x + _other,
            y + _other
        );
    }
    
    /// Sets this `real2` to the result of `self` + `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {undefined}
    static self_add_real = function (_other) {
        x += _other;
        y += _other;
    }
    
    /// Returns a new `real2` with `self` - `other`.
    /// @param {struct.real2} _other The secondary vector for this math operation.
    /// @returns {struct.real2} The resulting vector.
    static sub = function (_other) {
        return new real2(
            x - _other.x,
            y - _other.y
        );
    }
    
    /// Sets this `real2` to the result of `self` - `other`.
    /// @param {struct.real2} _other The secondary vector for this math operation.
    /// @returns {undefined}
    static self_sub = function (_other) {
        x -= _other.x;
        y -= _other.y;
    }
    
    /// Returns a new `real2` with `self` - `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {struct.real2} The resulting vector.
    static sub_real = function (_other) {
        return new real2(
            x - _other,
            y - _other
        );
    }
    
    /// Sets this `real2` to the result of `self` - `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {undefined}
    static self_sub_real = function (_other) {
        x -= _other;
        y -= _other;
    }
    
    /// Returns a new `real2` with `self` * `other`.
    /// @param {struct.real2} _other The secondary vector for this math operation.
    /// @returns {struct.real2} The resulting vector.
    static mul = function (_other) {
        return new real2(
            x * _other.x,
            y * _other.y
        );
    }
    
    /// Sets this `real2` to the result of `self` * `other`.
    /// @param {struct.real2} _other The secondary vector for this math operation.
    /// @returns {undefined}
    static self_mul = function (_other) {
        x *= _other.x;
        y *= _other.y;
    }
    
    /// Returns a new `real2` with `self` * `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {struct.real2} The resulting vector.
    static mul_real = function (_other) {
        return new real2(
            x * _other,
            y * _other
        );
    }
    
    /// Sets this `real2` to the result of `self` * `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {undefined}
    static self_mul_real = function (_other) {
        x *= _other;
        y *= _other;
    }
    
    /// Returns a new `real2` with `self` / `other`.
    /// @param {struct.real2} _other The secondary vector for this math operation.
    /// @returns {struct.real2} The resulting vector.
    static div_ = function (_other) { // GML name conflict.
        return new real2(
            x / _other.x,
            y / _other.y
        );
    }
    
    /// Sets this `real2` to the result of `self` / `other`.
    /// @param {struct.real2} _other The secondary vector for this math operation.
    /// @returns {undefined}
    static self_div = function (_other) {
        x /= _other.x;
        y /= _other.y;
    }
    
    /// Returns a new `real2` with `self` / `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {struct.real2} The resulting vector.
    static div_real = function (_other) {
        return new real2(
            x / _other,
            y / _other
        );
    }
    
    /// Sets this `real2` to the result of `self` / `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {undefined}
    static self_div_real = function (_other) {
        x /= _other;
        y /= _other;
    }
    
    /// Returns a new `real2` with -`self` (negated).
    /// @returns {struct.real2} The resulting vector.
    static neg = function () {
        return new real2(
            -x,
            -y
        );
    }
    
    /// Sets this `real2` to the result of -`self` (negated).
    /// @returns {undefined}
    static self_neg = function () {
        x = -x;
        y = -y;
    }
    
    /// Returns `true` when `self` == `other` else `false`.
    /// @param {struct.real2} _other The secondary vector to compare against.
    /// @returns {bool} The result of the equality check. 
    static eq = function (_other) {
        return self.x == _other.x && self.y == _other.y;
    }
    
    /// Returns `true` when `self` != `other` else `false`.
    /// @param {struct.real2} _other The secondary vector to compare against.
    /// @returns {bool} The result of the equality check. 
    static ne = function (_other) {
        return self.x != _other.x && self.y != _other.y;
    }
    
    /// Computes the per-component absolute numbers.
    /// @returns {struct.real2} The resulting vector.
    static abs_ = function () { // GML name conflict.
        return new real2(
            abs(x),
            abs(y)
        );
    }
    
    /// Sets this `real2` to the per-component absolute numbers.
    /// @returns {undefined}
    static self_abs = function () {
        x = abs(x);
        y = abs(y);
    }
    
    /// Computes the per-component arccosine numbers (in radians).
    /// Each component should be a value within the range of -1 to 1.
    /// Return values are in the range 0, pi or errors if the number is outside the range -1 to 1.
    /// @returns {struct.real2} The resulting vector.
    static acos = function () {
        return new real2(
            arccos(x),
            arccos(y)
        );
    }
    
    /// Sets this `real2` to the per-component arccosine numbers (in radians).
    /// Each component should be a value within the range of -1 to 1.
    /// Assigned values are in the range 0, pi or errors if the number is outside the range -1 to 1.
    /// @returns {undefined}
    static self_acos = function () {
        x = arccos(x);
        y = arccos(y);
    }
    
    /// Determines if all components of the vector are non-zero.
    /// @returns {bool}
    static all_ = function () { // GML name conflict.
        return x != 0.0 && y != 0.0;
    }
    
    /// Determines if any components of the vector are non-zero.
    /// @returns {bool}
    static any = function () {
        return x != 0.0 || y != 0.0;
    }
    
    /// Computes the per-component arcsine numbers (in radians).
    /// Each component should be a value within the range of -1 to 1.
    /// Return values are in the range -pi/2 to pi/2 or errors if the number is outside the range -1 to 1.
    /// @returns {struct.real2} The resulting vector.
    static asin = function () {
        return new real2(
            arcsin(x),
            arcsin(y)
        );
    }
    
    /// Sets this `real2` to the per-component arcsine numbers (in radians).
    /// Each component should be a value within the range of -1 to 1.
    /// Assigned values are in the range -pi/2 to pi/2 or errors if the number is outside the range -1 to 1.
    /// @returns {undefined}
    static self_asin = function () {
        x = arcsin(x);
        y = arcsin(y);
    }
    
    /// Computes the per-component arctangent numbers (in radians).
    /// Return values are in the range -pi/2 to pi/2.
    /// @returns {struct.real2} The resulting vector.
    static atan = function () {
        return new real2(
            arctan(x),
            arctan(y)
        );
    }
    
    /// Sets this `real2` to the per-component arctangent numbers (in radians).
    /// Assigned values are in the range -pi/2 to pi/2.
    /// @returns {undefined}
    static self_atan = function () {
        x = arctan(x);
        y = arctan(y);
    }
    
    /// Computes the four quadrant arctangent of y and x (in radians).
    /// @returns {real}
    static atan2 = function () {
        return arctan2(y, x);
    }
    
    /// Computes the per-component smallest integers greater than or equal to `self.x` and `self.y` respectively.
    /// @returns {struct.real2} The resulting vector.
    static ceil_ = function () { // GML name conflict.
        return new real2(
            ceil(x),
            ceil(y)
        );
    }
    
    /// Sets this `real2` to the per-component smallest integers greater than or equal to `self.x` and `self.y` respectively.
    /// @returns {undefined}
    static self_ceil = function () {
        x = ceil(x);
        y = ceil(y);
    }
    
    /// Computes the per-component clamped numbers between `min` and `max`.
    /// @param {real} _min The minimum value to clamp between.
    /// @param {real} _max The maximum value to clamp between.
    /// @returns {struct.real2} The resulting vector.
    static clamp_ = function (_min, _max) { // GML name conflict.
        return new real2(
            clamp(x, _min, _max),
            clamp(y, _min, _max)
        );
    }
    
    /// Sets this `real2` to the per-component clamped numbers between `min` and `max`.
    /// @param {real} _min The minimum value to clamp between.
    /// @param {real} _max The maximum value to clamp between.
    /// @returns {undefined}
    static self_clamp = function (_min, _max) {
        x = clamp(x, _min, _max);
        y = clamp(y, _min, _max);
    }
    
    /// Returns a cloned copy of this `real2`.
    /// @returns {struct.real2}
    static clone = function () {
        return new real2(x, y);
    }
    
    /// Computes the per-component cosine numbers (in radians).
    /// @returns {struct.real2} The resulting vector.
    static cos_ = function () { // GML name conflict.
        return new real2(
            cos(x),
            cos(y)
        );
    }
    
    /// Sets this `real2` to the per-component cosine numbers (in radians).
    /// @returns {undefined}
    static self_cos = function () {
        x = cos(x);
        y = cos(y);
    }
    
    /// Computes the per-component hyperbolic cosine numbers.
    /// @returns {struct.real2} The resulting vector.
    static cosh_ = function () { // GML name conflict.
        return new real2(
            cosh(x),
            cosh(y)
        );
    }
    
    /// Sets this `real2` to the per-component hyperbolic cosine numbers.
    /// @returns {undefined}
    static self_cosh = function () {
        x = cosh(x);
        y = cosh(y);
    }
    
    /// Converts the per-component numbers from radians to degrees.
    /// @returns {struct.real2} The resulting vector.
    static degrees = function () {
        return new real2(
            radtodeg(x),
            radtodeg(y)
        );
    }
    
    /// Sets this `real2` to the converted per-component numbers from radians to degrees.
    /// @returns {undefined}
    static self_degrees = function () {
        x = radtodeg(x);
        y = radtodeg(y);
    }
    
    /// Computes the distance scalar between two vectors.
    /// @param {struct.real2} _other The secondary vector for this math operation.
    /// @returns {real} The distance scalar between two vectors.
    static distance = function (_other) {
        var _dx = x - _other.x;
        var _dy = y - _other.y;
        return sqrt(_dx * _dx + _dy * _dy);
    }
    
    /// Computes the dot product of two vectors.
    /// @param {struct.real2} _other The secondary vector for this math operation.
    /// @returns {real} The dot product of two vectors.
    static dot = function (_other) {
        return x * _other.x + y * _other.y
    }
    
    /// Computes the per-component e^(self), the exponential function.
    /// @returns {struct.real2} The resulting vector.
    static exp_ = function () { // GML name conflict.
        return new real2(
            exp(x),
            exp(y)
        );
    }
    
    /// Sets this `real2` to the per-component e^(self), the exponential function.
    /// @returns {undefined}
    static self_exp = function () {
        x = exp(x);
        y = exp(y);
    }
    
    /// Computes the per-component 2^(self).
    /// @returns {struct.real2} The resulting vector.
    static exp2 = function () {
        return new real2(
            power(2, x),
            power(2, y)
        );
    }
    
    /// Sets this `real2` to the per-component 2^(self).
    /// @returns {undefined}
    static self_exp2 = function () {
        x = power(2, x);
        y = power(2, y);
    }
    
    /// Computes the per-component largest integers less than or equal to `self.x` and `self.y` respectively.
    /// @returns {struct.real2} The resulting vector.
    static floor_ = function () { // GML name conflict.
        return new real2(
            floor(x),
            floor(y)
        );
    }
    
    /// Sets this `real2` to the per-component largest integers less than or equal to `self.x` and `self.y` respectively.
    /// @returns {undefined}
    static self_floor = function () {
        x = floor(x);
        y = floor(y);
    }
    
    /// Computes the floating-point remainder of division for each component.
    /// @param {struct.real2} _other The secondary vector for this math operation.
    /// @returns {struct.real2} The resulting vector.
    static fmod = function (_other) {
        return new real2(
            x % _other.x,
            y % _other.y
        );
    }
    
    /// Sets this `real2` to the floating-point remainder of division for each component.
    /// @param {struct.real2} _other The secondary vector for this math operation.
    /// @returns {undefined}
    static self_fmod = function (_other) {
        x %= _other.x;
        y %= _other.y;
    }
    
    /// Computes the fractional (or decimal) part of each component; which is greater than or equal to 0 and less than 1.
    /// @returns {struct.real2} The resulting vector.
    static frac_ = function () { // GML name conflict.
        return new real2(
            frac(x),
            frac(y)
        );
    }
    
    /// Sets this `real2` to the fractional (or decimal) part of each component; which is greater than or equal to 0 and less than 1.
    /// @returns {undefined}
    static self_frac = function () {
        x = frac(x);
        y = frac(y);
    }
    
    /// Computes `value * 2^exponent` for each component of the vector.
    /// @param {real} _exp The exponent to raise 2 to.
    /// @returns {struct.real2} The resulting vector.
    static ldexp_ = function (_exp) { // GML name conflict.
        return new real2(
            ldexp(x, _exp),
            ldexp(y, _exp)
        );
    }
    
    /// Sets this `real2` to `value * 2^exponent` for each component of the vector.
    /// @param {real} _exp The exponent to raise 2 to.
    /// @returns {undefined}
    static self_ldexp = function (_exp) {
        x = ldexp(x, _exp);
        y = ldexp(y, _exp);
    }
    
    /// Computes the length scalar of this vector.
    /// @returns {real} The length scalar of this vector.
    static length = function () {
        return sqrt(x * x + y * y);
    }
    
    /// Computes the linear interpolation between two vectors.
    /// @param {struct.real2} _other The secondary vector for this math operation.
    /// @param {real} _t The interpolant t (unbounded).
    /// @returns {struct.real2} The resulting vector.
    static lerp_ = function (_other, _t) { // GML name conflict.
        return new real2(
            lerp(x, _other.x, _t),
            lerp(y, _other.y, _t)
        );
    }
    
    /// Sets this `real2` to the linear interpolation between two vectors.
    /// @param {struct.real2} _other The secondary vector for this math operation.
    /// @param {real} _t The interpolant t (unbounded).
    /// @returns {undefined}
    static self_lerp = function (_other, _t) {
        x = lerp(x, _other.x, _t);
        y = lerp(y, _other.y, _t);
    }
    
    /// Computes the natural logarithm (base e) of each component of the vector.
    /// @returns {struct.real2} The resulting vector.
    static log = function () {
        return new real2(
            ln(x),
            ln(y)
        );
    }
    
    /// Sets this `real2` to the natural logarithm (base e) of each component of the vector.
    /// @returns {undefined}
    static self_log = function () {
        x = ln(x);
        y = ln(y);
    }
    
    /// Computes the natural logarithm (base 10) of each component of the vector.
    /// @returns {struct.real2} The resulting vector.
    static log10_ = function () { // GML name conflict.
        return new real2(
            log10(x),
            log10(y)
        );
    }
    
    /// Sets this `real2` to the natural logarithm (base 10) of each component of the vector.
    /// @returns {undefined}
    static self_log10 = function () {
        x = log10(x);
        y = log10(y);
    }
    
    /// Computes the natural logarithm (base 2) of each component of the vector.
    /// @returns {struct.real2} The resulting vector.
    static log2_ = function () { // GML name conflict.
        return new real2(
            log2(x),
            log2(y)
        );
    }
    
    /// Sets this `real2` to the natural logarithm (base 2) of each component of the vector.
    /// @returns {undefined}
    static self_log2 = function () {
        x = log2(x);
        y = log2(y);
    }
    
    /// Computes the multiply-add operation: (self * b) + c.
    /// @param {struct.real2} _b The vector for the multiply operation.
    /// @param {struct.real2} _c The vector for the addition operation.
    /// @returns {struct.real2} The resulting vector.
    static mad = function (_b, _c) {
        return new real2(
            x * _b.x + _c.x,
            y * _b.y + _c.y,
        );
    }
    
    /// Sets this `real2` to the multiply-add operation: (self * b) + c.
    /// @param {struct.real2} _b The vector for the multiply operation.
    /// @param {struct.real2} _c The vector for the addition operation.
    /// @returns {undefined}
    static self_mad = function (_b, _c) {
        x = x * _b.x + _c.x;
        y = y * _b.y + _c.y;
    }
    
    /// Computes the component-wise maximum of two vectors.
    /// @param {struct.real2} _other The secondary vector for this math operation.
    /// @returns {struct.real2} The resulting vector.
    static max_ = function (_other) { // GML name conflict.
        return new real2(
            max(x, _other.x),
            max(y, _other.y),
        );
    }
    
    /// Sets this `real2` to the component-wise maximum of two vectors.
    /// @param {struct.real2} _other The secondary vector for this math operation.
    /// @returns {undefined}
    static self_max = function (_other) {
        x = max(x, _other.x);
        y = max(y, _other.y);
    }
    
    /// Computes the component-wise minimum of two vectors.
    /// @param {struct.real2} _other The secondary vector for this math operation.
    /// @returns {struct.real2} The resulting vector.
    static min_ = function (_other) { // GML name conflict.
        return new real2(
            min(x, _other.x),
            min(y, _other.y),
        );
    }
    
    /// Sets this `real2` to the component-wise minimum of two vectors.
    /// @param {struct.real2} _other The secondary vector for this math operation.
    /// @returns {undefined}
    static self_min = function (_other) {
        x = min(x, _other.x);
        y = min(y, _other.y);
    }
    
    /// Computes the normalized vector (unit vector) of `self`.
    /// @returns {struct.real2} The resulting vector.
    static normalize = function () {
        var _length = length();
        if _length != 0 {
            return new real2 (
                x / _length,
                y / _length
            );
        } else {
            // return the zero vector if the input vector has zero length.
            return new real2();
        }
    }
    
    /// Sets this `real2` to the normalized vector (unit vector) of `self`.
    /// @returns {undefined}
    static self_normalize = function () {
        var _length = length();
        if _length != 0 {
            x /= _length;
            y /= _length;
        } else {
            // set to zero vector if the input vector has zero length.
            x = 0;
            y = 0;
        }
    }
    
    /// Computes the component-wise power: `self^exponent`.
    /// @param {real} _n The power to raise this vector to.
    /// @returns {struct.real2} The resulting vector.
    static pow = function (_n) {
        return new real2(
            power(x, _n),
            power(y, _n)
        );
    }
    
    /// Sets this `real2` to the component-wise power: `self^exponent`.
    /// @param {real} _n The power to raise this vector to.
    /// @returns {undefined}
    static self_pow = function (_n) {
        x = power(x, _n);
        y = power(y, _n);
    }
    
    /// Converts the per-component numbers from degrees to radians.
    /// @returns {struct.real2} The resulting vector.
    static radians = function () {
        return new real2(
            degtorad(x),
            degtorad(y)
        );
    }
    
    /// Sets this `real2` to the converted per-component numbers from degrees to radians.
    /// @returns {undefined}
    static self_radians = function () {
        x = degtorad(x);
        y = degtorad(y);
    }
    
    /// Computes the reciprocal of each component of the vector.
    /// Equivalent to `1 / self`.
    /// @returns {struct.real2} The resulting vector.
    static rcp = function () {
        return new real2(
            1 / x,
            1 / y
        );
    }
    
    /// Sets this `real2` to the reciprocal of each component of the vector.
    /// Equivalent to `1 / self`.
    /// @returns {undefined}
    static self_rcp = function () {
        x = 1 / x;
        y = 1 / y;
    }
    
    /// Computes the reciprocal of each component of the vector.
    /// Equivalent to `1 / self` and returning 0 when self is 0.
    /// @returns {struct.real2} The resulting vector.
    static rcp_safe = function () {
        return new real2(
            x != 0 ? 1 / x : 0,
            y != 0 ? 1 / y : 0,
        );
    }
    
    /// Sets this `real2` to the reciprocal of each component of the vector.
    /// Equivalent to `1 / self` and returning 0 when self is 0.
    /// @returns {undefined}
    static self_rcp_safe = function () {
        x = x != 0 ? 1 / x : 0;
        y = y != 0 ? 1 / y : 0;
    }
    
    /// Computes the reflection of an incident vector `self` about a normal vector `normal`.
    /// @param {struct.real2} _normal The secondary vector for this math operation.
    /// @returns {struct.real2} The resulting vector.
    static reflect = function (_normal) {
        var _dot = dot(_normal);
        return new real2(
            x - 2 * _dot * _normal.x,
            y - 2 * _dot * _normal.y
        );
    }
    
    /// Sets this `real2` to the reflection of an incident vector `self` about a normal vector `normal`.
    /// @param {struct.real2} _normal The secondary vector for this math operation.
    /// @returns {undefined}
    static self_reflect = function (_normal) {
        var _dot = dot(_normal);
        x = x - 2 * _dot * _normal.x;
        y = y - 2 * _dot * _normal.y;
    }
    
    /// Computes the refraction vector for `self` (as incident vector), normal, and refraction index.
    /// @param {struct.real2} _normal The secondary vector for this math operation.
    /// @param {real} _eta The refraction index.
    /// @returns {struct.real2} The resulting vector.
    static refract = function (_normal, _eta) {
        var _dot_n_i = dot(_normal);
        var _k = 1.0 - _eta * _eta * (1.0 - _dot_n_i * _dot_n_i);
        if _k < 0.0 {
            return new real2();
        } else {
            var scale_i = _eta;
            var scale_n = _eta * _dot_n_i + sqrt(_k);
            return new real2(
                scale_i * x - scale_n * _normal.x,
                scale_i * y - scale_n * _normal.y
            );
        }
    }
    
    /// Sets this `real2` to the refraction vector for `self` (as incident vector), normal, and refraction index.
    /// @param {struct.real2} _normal The secondary vector for this math operation.
    /// @param {real} _eta The refraction index.
    /// @returns {undefined}
    static self_refract = function (_normal, _eta) {
        var _dot_n_i = dot(_normal);
        var _k = 1.0 - _eta * _eta * (1.0 - _dot_n_i * _dot_n_i);
        if _k < 0.0 {
            x = 0;
            y = 0;
        } else {
            var scale_i = _eta;
            var scale_n = _eta * _dot_n_i + sqrt(_k);
            x = scale_i * x - scale_n * _normal.x;
            y = scale_i * y - scale_n * _normal.y;
        }
    }
    
    /// Computes the per-component nearest integer by rounding.
    /// @returns {struct.real2} The resulting vector.
    static round_ = function () { // GML name conflict.
        return new real2(
            round(x),
            round(y)
        );
    }
    
    /// Sets this `real2` to the per-component nearest integer by rounding.
    /// @returns {undefined}
    static self_round = function () {
        x = round(x);
        y = round(y);
    }
    
    /// Computes the reciprocal square root of each component of the vector.
    /// @returns {struct.real2} The resulting vector.
    static rsqrt = function () {
        return new real2(
            x != 0 ? 1 / sqrt(x) : infinity,
            y != 0 ? 1 / sqrt(y) : infinity,
        );
    }
    
    /// Sets this `real2` to the reciprocal square root of each component of the vector.
    /// @returns {undefined}
    static self_rsqrt = function () {
        x = x != 0 ? 1 / sqrt(x) : infinity;
        y = y != 0 ? 1 / sqrt(y) : infinity;
    }
        
    /// Computes the per-component clamped numbers between `0` and `1`.
    /// @returns {struct.real2} The resulting vector.
    static saturate = function () {
        return clamp_(0, 1);
    }
    
    /// Sets this `real2` to the per-component clamped numbers between `0` and `1`.
    /// @returns {undefined}
    static self_saturate = function () {
        self_clamp(0, 1);
    }
    
    /// Computes the per-component sign.
    /// When a number is positive, negative or neither it returns 1, -1, or 0, respectively.
    /// @returns {struct.real2} The resulting vector.
    static sign_ = function () { // GML name conflict.
        return new real2(
            sign(x),
            sign(y)
        );
    }
    
    /// Sets this `real2` to the per-component sign.
    /// When a number is positive, negative or neither it sets the components to 1, -1, or 0, respectively.
    /// @returns {undefined}
    static self_sign = function () {
        x = sign(x);
        y = sign(y);
    }
    
    /// Computes the per-component sine numbers (in radians).
    /// @returns {struct.real2} The resulting vector.
    static sin_ = function () { // GML name conflict.
        return new real2(
            sin(x),
            sin(y)
        );
    }
    
    /// Sets this `real2` to the per-component sine numbers (in radians).
    /// @returns {undefined}
    static self_sin = function () {
        x = sin(x);
        y = sin(y);
    }
    
    /// Computes the per-component hyperbolic sine numbers.
    /// @returns {struct.real2} The resulting vector.
    static sinh_ = function () { // GML name conflict.
        return new real2(
            sinh(x),
            sinh(y)
        );
    }
    
    /// Sets this `real2` to the per-component hyperbolic sine numbers.
    /// @returns {undefined}
    static self_sinh = function () {
        x = sinh(x);
        y = sinh(y);
    }
    
    /// Computes the per-component smooth interpolation between 0 and 1 over a given range using a cubic Hermite curve.
    /// @param {struct.real2} _min The lower bound of the input range.
    /// @param {struct.real2} _max The upper bound of the input range.
    /// @returns {struct.real2} The resulting vector.
    static smoothstep_ = function (_min, _max) { // GML name conflict.
        return new real2(
            smoothstep(_min.x, _max.x, x),
            smoothstep(_min.y, _max.y, y)
        );
    }
    
    /// Sets this `real2` to the per-component smooth interpolation between 0 and 1 over a given range using a cubic Hermite curve.
    /// @param {struct.real2} _min The lower bound of the input range.
    /// @param {struct.real2} _max The upper bound of the input range.
    /// @returns {undefined}
    static self_smoothstep = function (_min, _max) {
        x = smoothstep(_min.x, _max.x, x);
        y = smoothstep(_min.y, _max.y, y);
    }
    
    /// Computes the per-component square root.
    /// @returns {struct.real2} The resulting vector.
    static sqrt_ = function () { // GML name conflict.
        return new real2(
            sqrt(x),
            sqrt(y)
        );
    }
    
    /// Sets this `real2` to the per-component square root.
    /// @returns {undefined}
    static self_sqrt = function () {
        x = sqrt(x);
        y = sqrt(y);
    }
    
    /// Computes the component-wise step function.
    /// For each component: returns 0.0 if `self < edge`, else returns 1.0.
    /// @param {struct.real2} _edge The secondary vector for this math operation.
    /// @returns {struct.real2} The resulting vector.
    static step = function (_edge) {
        return new real2(
            x < _edge.x ? 0 : 1,
            y < _edge.y ? 0 : 1
        );
    }
    
    /// Sets this `real2` to the component-wise step function.
    /// For each component: returns 0.0 if `self < edge`, else returns 1.0.
    /// @param {struct.real2} _edge The secondary vector for this math operation.
    /// @returns {undefined}
    static self_step = function (_edge) {
        x = x < _edge.x ? 0 : 1;
        y = y < _edge.y ? 0 : 1;
    }
    
    /// Computes the per-component tangent numbers (in radians).
    /// @returns {struct.real2} The resulting vector.
    static tan_ = function () { // GML name conflict.
        return new real2(
            tan(x),
            tan(y)
        );
    }
    
    /// Sets this `real2` to the per-component tangent numbers (in radians).
    /// @returns {undefined}
    static self_tan = function () {
        x = tan(x);
        y = tan(y);
    }
    
    /// Computes the per-component hyperbolic tangent numbers.
    /// @returns {struct.real2} The resulting vector.
    static tanh_ = function () { // GML name conflict.
        return new real2(
            tanh(x),
            tanh(y)
        );
    }
    
    /// Sets this `real2` to the per-component hyperbolic tangent numbers.
    /// @returns {undefined}
    static self_tanh = function () {
        x = tanh(x);
        y = tanh(y);
    }
    
    /// Computes the per-component truncated integer portion.
    /// @returns {struct.real2} The resulting vector.
    static trunc_ = function () { // GML name conflict.
        return new real2(
            trunc(x),
            trunc(y)
        );
    }
    
    /// Sets this `real2` to the per-component truncated integer portion.
    /// @returns {undefined}
    static self_trunc = function () {
        x = trunc(x);
        y = trunc(y);
    }
    
    /// Computes a swizzled vector using the constructor `new real2(self.x, self.x)`.
    /// @returns {struct.real2} The resulting vector.
    static xx = function () {
        return new real2(
            x,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real2(self.x, self.y)`.
    /// @returns {struct.real2} The resulting vector.
    static xy = function () {
        return new real2(
            x,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real2(self.y, self.x)`.
    /// @returns {struct.real2} The resulting vector.
    static yx = function () {
        return new real2(
            y,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real2(self.y, self.y)`.
    /// @returns {struct.real2} The resulting vector.
    static yy = function () {
        return new real2(
            y,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.x, self.x, self.x)`.
    /// @returns {struct.real3} The resulting vector.
    static xxx = function () {
        return new real3(
            x,
            x,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.x, self.x, self.y)`.
    /// @returns {struct.real3} The resulting vector.
    static xxy = function () {
        return new real3(
            x,
            x,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.x, self.y, self.x)`.
    /// @returns {struct.real3} The resulting vector.
    static xyx = function () {
        return new real3(
            x,
            y,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.x, self.y, self.y)`.
    /// @returns {struct.real3} The resulting vector.
    static xyy = function () {
        return new real3(
            x,
            y,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.y, self.x, self.x)`.
    /// @returns {struct.real3} The resulting vector.
    static yxx = function () {
        return new real3(
            y,
            x,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.y, self.x, self.y)`.
    /// @returns {struct.real3} The resulting vector.
    static yxy = function () {
        return new real3(
            y,
            x,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.y, self.y, self.x)`.
    /// @returns {struct.real3} The resulting vector.
    static yyx = function () {
        return new real3(
            y,
            y,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.y, self.y, self.y)`.
    /// @returns {struct.real3} The resulting vector.
    static yyy = function () {
        return new real3(
            y,
            y,
            y
        );
    }
}