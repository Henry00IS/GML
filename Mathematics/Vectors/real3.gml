/// Creates a vector containing 3 `real` values.
/// @param {real} _x The x-component of the vector.
/// @param {real} _y The y-component of the vector.
/// @param {real} _z The z-component of the vector.
function real3(_x = 0, _y = 0, _z = 0) constructor {
    x = _x;
    y = _y;
    z = _z;
    
    /// Returns a new `real3` with `self` + `other`.
    /// @param {struct.real3} _other The secondary vector for this math operation.
    /// @returns {struct.real3} The resulting vector.
    static add = function (_other) {
        return new real3(
            x + _other.x,
            y + _other.y,
            z + _other.z
        );
    }
    
    /// Sets this `real3` to the result of `self` + `other`.
    /// @param {struct.real3} _other The secondary vector for this math operation.
    static self_add = function (_other) {
        x += _other.x;
        y += _other.y;
        z += _other.z;
    }
    
    /// Returns a new `real3` with `self` + `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {struct.real3} The resulting vector.
    static add_real = function (_other) {
        return new real3(
            x + _other,
            y + _other,
            z + _other
        );
    }
    
    /// Sets this `real3` to the result of `self` + `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {undefined}
    static self_add_real = function (_other) {
        x += _other;
        y += _other;
        z += _other;
    }
    
    /// Returns a new `real3` with `self` - `other`.
    /// @param {struct.real3} _other The secondary vector for this math operation.
    /// @returns {struct.real3} The resulting vector.
    static sub = function (_other) {
        return new real3(
            x - _other.x,
            y - _other.y,
            z - _other.z
        );
    }
    
    /// Sets this `real3` to the result of `self` - `other`.
    /// @param {struct.real3} _other The secondary vector for this math operation.
    /// @returns {undefined}
    static self_sub = function (_other) {
        x -= _other.x;
        y -= _other.y;
        z -= _other.z;
    }
    
    /// Returns a new `real3` with `self` - `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {struct.real3} The resulting vector.
    static sub_real = function (_other) {
        return new real3(
            x - _other,
            y - _other,
            z - _other
        );
    }
    
    /// Sets this `real3` to the result of `self` - `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {undefined}
    static self_sub_real = function (_other) {
        x -= _other;
        y -= _other;
        z -= _other;
    }
    
    /// Returns a new `real3` with `self` * `other`.
    /// @param {struct.real3} _other The secondary vector for this math operation.
    /// @returns {struct.real3} The resulting vector.
    static mul = function (_other) {
        return new real3(
            x * _other.x,
            y * _other.y,
            z * _other.z
        );
    }
    
    /// Sets this `real3` to the result of `self` * `other`.
    /// @param {struct.real3} _other The secondary vector for this math operation.
    /// @returns {undefined}
    static self_mul = function (_other) {
        x *= _other.x;
        y *= _other.y;
        z *= _other.z;
    }
    
    /// Returns a new `real3` with `self` * `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {struct.real3} The resulting vector.
    static mul_real = function (_other) {
        return new real3(
            x * _other,
            y * _other,
            z * _other
        );
    }
    
    /// Sets this `real3` to the result of `self` * `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {undefined}
    static self_mul_real = function (_other) {
        x *= _other;
        y *= _other;
        z *= _other;
    }
    
    /// Returns a new `real3` with `self` / `other`.
    /// @param {struct.real3} _other The secondary vector for this math operation.
    /// @returns {struct.real3} The resulting vector.
    static div_ = function (_other) { // GML name conflict.
        return new real3(
            x / _other.x,
            y / _other.y,
            z / _other.z
        );
    }
    
    /// Sets this `real3` to the result of `self` / `other`.
    /// @param {struct.real3} _other The secondary vector for this math operation.
    /// @returns {undefined}
    static self_div = function (_other) {
        x /= _other.x;
        y /= _other.y;
        z /= _other.z;
    }
    
    /// Returns a new `real3` with `self` / `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {struct.real3} The resulting vector.
    static div_real = function (_other) {
        return new real3(
            x / _other,
            y / _other,
            z / _other
        );
    }
    
    /// Sets this `real3` to the result of `self` / `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {undefined}
    static self_div_real = function (_other) {
        x /= _other;
        y /= _other;
        z /= _other;
    }
    
    /// Returns a new `real3` with -`self` (negated).
    /// @returns {struct.real3} The resulting vector.
    static neg = function () {
        return new real3(
            -x,
            -y,
            -z
        );
    }
    
    /// Sets this `real3` to the result of -`self` (negated).
    /// @returns {undefined}
    static self_neg = function () {
        x = -x;
        y = -y;
        z = -z;
    }
    
    /// Returns `true` when `self` == `other` else `false`.
    /// @param {struct.real3} _other The secondary vector to compare against.
    /// @returns {bool} The result of the equality check. 
    static eq = function (_other) {
        return self.x == _other.x && self.y == _other.y && self.z == _other.z;
    }
    
    /// Returns `true` when `self` != `other` else `false`.
    /// @param {struct.real3} _other The secondary vector to compare against.
    /// @returns {bool} The result of the equality check. 
    static ne = function (_other) {
        return self.x != _other.x && self.y != _other.y && self.z != _other.z;
    }
    
    /// Computes the per-component absolute numbers.
    /// @returns {struct.real3} The resulting vector.
    static abs_ = function () { // GML name conflict.
        return new real3(
            abs(x),
            abs(y),
            abs(z)
        );
    }
    
    /// Sets this `real3` to the per-component absolute numbers.
    /// @returns {undefined}
    static self_abs = function () {
        x = abs(x);
        y = abs(y);
        z = abs(z);
    }
    
    /// Computes the per-component arccosine numbers (in radians).
    /// Each component should be a value within the range of -1 to 1.
    /// Return values are in the range 0, pi or errors if the number is outside the range -1 to 1.
    /// @returns {struct.real3} The resulting vector.
    static acos = function () {
        return new real3(
            arccos(x),
            arccos(y),
            arccos(z)
        );
    }
    
    /// Sets this `real3` to the per-component arccosine numbers (in radians).
    /// Each component should be a value within the range of -1 to 1.
    /// Assigned values are in the range 0, pi or errors if the number is outside the range -1 to 1.
    /// @returns {undefined}
    static self_acos = function () {
        x = arccos(x);
        y = arccos(y);
        z = arccos(z);
    }
    
    /// Determines if all components of the vector are non-zero.
    /// @returns {bool}
    static all_ = function () { // GML name conflict.
        return x != 0.0 && y != 0.0 && z != 0.0;
    }
    
    /// Determines if any components of the vector are non-zero.
    /// @returns {bool}
    static any = function () {
        return x != 0.0 || y != 0.0 || z != 0.0;
    }
    
    /// Computes the per-component arcsine numbers (in radians).
    /// Each component should be a value within the range of -1 to 1.
    /// Return values are in the range -pi/2 to pi/2 or errors if the number is outside the range -1 to 1.
    /// @returns {struct.real3} The resulting vector.
    static asin = function () {
        return new real3(
            arcsin(x),
            arcsin(y),
            arcsin(z)
        );
    }
    
    /// Sets this `real3` to the per-component arcsine numbers (in radians).
    /// Each component should be a value within the range of -1 to 1.
    /// Assigned values are in the range -pi/2 to pi/2 or errors if the number is outside the range -1 to 1.
    /// @returns {undefined}
    static self_asin = function () {
        x = arcsin(x);
        y = arcsin(y);
        z = arcsin(z);
    }
    
    /// Computes the per-component arctangent numbers (in radians).
    /// Return values are in the range -pi/2 to pi/2.
    /// @returns {struct.real3} The resulting vector.
    static atan = function () {
        return new real3(
            arctan(x),
            arctan(y),
            arctan(z)
        );
    }
    
    /// Sets this `real3` to the per-component arctangent numbers (in radians).
    /// Assigned values are in the range -pi/2 to pi/2.
    /// @returns {undefined}
    static self_atan = function () {
        x = arctan(x);
        y = arctan(y);
        z = arctan(z);
    }
    
    /// Computes the per-component smallest integers greater than or equal to `self.x` and `self.y` and `self.z` respectively.
    /// @returns {struct.real3} The resulting vector.
    static ceil_ = function () { // GML name conflict.
        return new real3(
            ceil(x),
            ceil(y),
            ceil(z)
        );
    }
    
    /// Sets this `real3` to the per-component smallest integers greater than or equal to `self.x` and `self.y` and `self.z` respectively.
    /// @returns {undefined}
    static self_ceil = function () {
        x = ceil(x);
        y = ceil(y);
        z = ceil(z);
    }
    
    /// Computes the per-component clamped numbers between `min` and `max`.
    /// @param {real} _min The minimum value to clamp between.
    /// @param {real} _max The maximum value to clamp between.
    /// @returns {struct.real3} The resulting vector.
    static clamp_ = function (_min, _max) { // GML name conflict.
        return new real3(
            clamp(x, _min, _max),
            clamp(y, _min, _max),
            clamp(z, _min, _max)
        );
    }
    
    /// Sets this `real3` to the per-component clamped numbers between `min` and `max`.
    /// @param {real} _min The minimum value to clamp between.
    /// @param {real} _max The maximum value to clamp between.
    /// @returns {undefined}
    static self_clamp = function (_min, _max) {
        x = clamp(x, _min, _max);
        y = clamp(y, _min, _max);
        z = clamp(z, _min, _max);
    }
    
    /// Returns a cloned copy of this `real3`.
    /// @returns {struct.real3}
    static clone = function () {
        return new real3(x, y, z);
    }
    
    /// Computes the per-component cosine numbers (in radians).
    /// @returns {struct.real3} The resulting vector.
    static cos_ = function () { // GML name conflict.
        return new real3(
            cos(x),
            cos(y),
            cos(z)
        );
    }
    
    /// Sets this `real3` to the per-component cosine numbers (in radians).
    /// @returns {undefined}
    static self_cos = function () {
        x = cos(x);
        y = cos(y);
        z = cos(z);
    }
    
    /// Computes the per-component hyperbolic cosine numbers.
    /// @returns {struct.real3} The resulting vector.
    static cosh_ = function () { // GML name conflict.
        // Feather ignore GM2023
        return new real3(
            cosh(x),
            cosh(y),
            cosh(z)
        );
    }
    
    /// Sets this `real3` to the per-component hyperbolic cosine numbers.
    /// @returns {undefined}
    static self_cosh = function () {
        x = cosh(x);
        y = cosh(y);
        z = cosh(z);
    }
    
    /// Converts the per-component numbers from radians to degrees.
    /// @returns {struct.real3} The resulting vector.
    static degrees = function () {
        return new real3(
            radtodeg(x),
            radtodeg(y),
            radtodeg(z)
        );
    }
    
    /// Sets this `real3` to the converted per-component numbers from radians to degrees.
    /// @returns {undefined}
    static self_degrees = function () {
        x = radtodeg(x);
        y = radtodeg(y);
        z = radtodeg(z);
    }
    
    /// Computes the distance scalar between two vectors.
    /// @param {struct.real3} _other The secondary vector for this math operation.
    /// @returns {real} The distance scalar between two vectors.
    static distance = function (_other) {
        var _dx = x - _other.x;
        var _dy = y - _other.y;
        var _dz = z - _other.z;
        return sqrt(_dx * _dx + _dy * _dy + _dz * _dz);
    }
    
    /// Computes the dot product of two vectors.
    /// @param {struct.real3} _other The secondary vector for this math operation.
    /// @returns {real} The dot product of two vectors.
    static dot = function (_other) {
        return x * _other.x + y * _other.y + z * _other.z;
    }
    
    /// Computes the per-component e^(self), the exponential function.
    /// @returns {struct.real3} The resulting vector.
    static exp_ = function () { // GML name conflict.
        return new real3(
            exp(x),
            exp(y),
            exp(z)
        );
    }
    
    /// Sets this `real3` to the per-component e^(self), the exponential function.
    /// @returns {undefined}
    static self_exp = function () {
        x = exp(x);
        y = exp(y);
        z = exp(z);
    }
    
    /// Computes the per-component 2^(self).
    /// @returns {struct.real3} The resulting vector.
    static exp2 = function () {
        return new real3(
            power(2, x),
            power(2, y),
            power(2, z)
        );
    }
    
    /// Sets this `real3` to the per-component 2^(self).
    /// @returns {undefined}
    static self_exp2 = function () {
        x = power(2, x);
        y = power(2, y);
        z = power(2, z);
    }
    
    /// Computes the per-component largest integers less than or equal to `self.x` and `self.y` and `self.z` respectively.
    /// @returns {struct.real3} The resulting vector.
    static floor_ = function () { // GML name conflict.
        return new real3(
            floor(x),
            floor(y),
            floor(z)
        );
    }
    
    /// Sets this `real3` to the per-component largest integers less than or equal to `self.x` and `self.y` and `self.z` respectively.
    /// @returns {undefined}
    static self_floor = function () {
        x = floor(x);
        y = floor(y);
        z = floor(z);
    }
    
    /// Computes the floating-point remainder of division for each component.
    /// @param {struct.real3} _other The secondary vector for this math operation.
    /// @returns {struct.real3} The resulting vector.
    static fmod = function (_other) {
        return new real3(
            x % _other.x,
            y % _other.y,
            z % _other.z
        );
    }
    
    /// Sets this `real3` to the floating-point remainder of division for each component.
    /// @param {struct.real3} _other The secondary vector for this math operation.
    /// @returns {undefined}
    static self_fmod = function (_other) {
        x %= _other.x;
        y %= _other.y;
        z %= _other.z;
    }
    
    /// Computes the fractional (or decimal) part of each component; which is greater than or equal to 0 and less than 1.
    /// @returns {struct.real3} The resulting vector.
    static frac_ = function () { // GML name conflict.
        return new real3(
            frac(x),
            frac(y),
            frac(z)
        );
    }
    
    /// Sets this `real3` to the fractional (or decimal) part of each component; which is greater than or equal to 0 and less than 1.
    /// @returns {undefined}
    static self_frac = function () {
        x = frac(x);
        y = frac(y);
        z = frac(z);
    }
    
    /// Computes `value * 2^exponent` for each component of the vector.
    /// @param {real} _exp The exponent to raise 2 to.
    /// @returns {struct.real3} The resulting vector.
    static ldexp_ = function (_exp) { // GML name conflict.
        // Feather ignore GM2023
        return new real3(
            ldexp(x, _exp),
            ldexp(y, _exp),
            ldexp(z, _exp)
        );
    }
    
    /// Sets this `real3` to `value * 2^exponent` for each component of the vector.
    /// @param {real} _exp The exponent to raise 2 to.
    /// @returns {undefined}
    static self_ldexp = function (_exp) {
        x = ldexp(x, _exp);
        y = ldexp(y, _exp);
        z = ldexp(z, _exp);
    }
    
    /// Computes the length scalar of this vector.
    /// @returns {real} The length scalar of this vector.
    static length = function () {
        return sqrt(x * x + y * y + z * z);
    }
    
    /// Computes the squared length (magnitude) scalar of this vector.
    /// @returns {real} The squared length scalar of this vector.
    static length_squared = function () {
        return x * x + y * y + z * z;
    }
    
    /// Computes the linear interpolation between two vectors.
    /// @param {struct.real3} _other The secondary vector for this math operation.
    /// @param {real} _t The interpolant t (unbounded).
    /// @returns {struct.real3} The resulting vector.
    static lerp_ = function (_other, _t) { // GML name conflict.
        return new real3(
            lerp(x, _other.x, _t),
            lerp(y, _other.y, _t),
            lerp(z, _other.z, _t)
        );
    }
    
    /// Sets this `real3` to the linear interpolation between two vectors.
    /// @param {struct.real3} _other The secondary vector for this math operation.
    /// @param {real} _t The interpolant t (unbounded).
    /// @returns {undefined}
    static self_lerp = function (_other, _t) {
        x = lerp(x, _other.x, _t);
        y = lerp(y, _other.y, _t);
        z = lerp(z, _other.z, _t);
    }
    
    /// Computes the natural logarithm (base e) of each component of the vector.
    /// @returns {struct.real3} The resulting vector.
    static log = function () {
        return new real3(
            ln(x),
            ln(y),
            ln(z)
        );
    }
    
    /// Sets this `real3` to the natural logarithm (base e) of each component of the vector.
    /// @returns {undefined}
    static self_log = function () {
        x = ln(x);
        y = ln(y);
        z = ln(z);
    }
    
    /// Computes the natural logarithm (base 10) of each component of the vector.
    /// @returns {struct.real3} The resulting vector.
    static log10_ = function () { // GML name conflict.
        return new real3(
            log10(x),
            log10(y),
            log10(z)
        );
    }
    
    /// Sets this `real3` to the natural logarithm (base 10) of each component of the vector.
    /// @returns {undefined}
    static self_log10 = function () {
        x = log10(x);
        y = log10(y);
        z = log10(z);
    }
    
    /// Computes the natural logarithm (base 2) of each component of the vector.
    /// @returns {struct.real3} The resulting vector.
    static log2_ = function () { // GML name conflict.
        return new real3(
            log2(x),
            log2(y),
            log2(z)
        );
    }
    
    /// Sets this `real3` to the natural logarithm (base 2) of each component of the vector.
    /// @returns {undefined}
    static self_log2 = function () {
        x = log2(x);
        y = log2(y);
        z = log2(z);
    }
    
    /// Computes the multiply-add operation: (self * b) + c.
    /// @param {struct.real3} _b The vector for the multiply operation.
    /// @param {struct.real3} _c The vector for the addition operation.
    /// @returns {struct.real3} The resulting vector.
    static mad = function (_b, _c) {
        return new real3(
            x * _b.x + _c.x,
            y * _b.y + _c.y,
            z * _b.z + _c.z
        );
    }
    
    /// Sets this `real3` to the multiply-add operation: (self * b) + c.
    /// @param {struct.real3} _b The vector for the multiply operation.
    /// @param {struct.real3} _c The vector for the addition operation.
    /// @returns {undefined}
    static self_mad = function (_b, _c) {
        x = x * _b.x + _c.x;
        y = y * _b.y + _c.y;
        z = z * _b.z + _c.z;
    }
    
    /// Computes the component-wise maximum of two vectors.
    /// @param {struct.real3} _other The secondary vector for this math operation.
    /// @returns {struct.real3} The resulting vector.
    static max_ = function (_other) { // GML name conflict.
        return new real3(
            max(x, _other.x),
            max(y, _other.y),
            max(z, _other.z)
        );
    }
    
    /// Sets this `real3` to the component-wise maximum of two vectors.
    /// @param {struct.real3} _other The secondary vector for this math operation.
    /// @returns {undefined}
    static self_max = function (_other) {
        x = max(x, _other.x);
        y = max(y, _other.y);
        z = max(z, _other.z);
    }
    
    /// Computes the component-wise minimum of two vectors.
    /// @param {struct.real3} _other The secondary vector for this math operation.
    /// @returns {struct.real3} The resulting vector.
    static min_ = function (_other) { // GML name conflict.
        return new real3(
            min(x, _other.x),
            min(y, _other.y),
            min(z, _other.z)
        );
    }
    
    /// Sets this `real3` to the component-wise minimum of two vectors.
    /// @param {struct.real3} _other The secondary vector for this math operation.
    /// @returns {undefined}
    static self_min = function (_other) {
        x = min(x, _other.x);
        y = min(y, _other.y);
        z = min(z, _other.z);
    }
    
    /// Computes the normalized vector (unit vector) of `self`.
    /// @returns {struct.real3} The resulting vector.
    static normalize = function () {
        var _length = length();
        if _length != 0 {
            return new real3 (
                x / _length,
                y / _length,
                z / _length
            );
        } else {
            // return the zero vector if the input vector has zero length.
            return new real3();
        }
    }
    
    /// Sets this `real3` to the normalized vector (unit vector) of `self`.
    /// @returns {undefined}
    static self_normalize = function () {
        var _length = length();
        if _length != 0 {
            x /= _length;
            y /= _length;
            z /= _length;
        } else {
            // set to zero vector if the input vector has zero length.
            x = 0;
            y = 0;
            z = 0;
        }
    }
    
    /// Computes the component-wise power: `self^exponent`.
    /// @param {real} _n The power to raise this vector to.
    /// @returns {struct.real3} The resulting vector.
    static pow = function (_n) {
        return new real3(
            power(x, _n),
            power(y, _n),
            power(z, _n)
        );
    }
    
    /// Sets this `real3` to the component-wise power: `self^exponent`.
    /// @param {real} _n The power to raise this vector to.
    /// @returns {undefined}
    static self_pow = function (_n) {
        x = power(x, _n);
        y = power(y, _n);
        z = power(z, _n);
    }
    
    /// Converts the per-component numbers from degrees to radians.
    /// @returns {struct.real3} The resulting vector.
    static radians = function () {
        return new real3(
            degtorad(x),
            degtorad(y),
            degtorad(z)
        );
    }
    
    /// Sets this `real3` to the converted per-component numbers from degrees to radians.
    /// @returns {undefined}
    static self_radians = function () {
        x = degtorad(x);
        y = degtorad(y);
        z = degtorad(z);
    }
    
    /// Computes the reciprocal of each component of the vector.
    /// Equivalent to `1 / self`.
    /// @returns {struct.real3} The resulting vector.
    static rcp = function () {
        return new real3(
            1 / x,
            1 / y,
            1 / z
        );
    }
    
    /// Sets this `real3` to the reciprocal of each component of the vector.
    /// Equivalent to `1 / self`.
    /// @returns {undefined}
    static self_rcp = function () {
        x = 1 / x;
        y = 1 / y;
        z = 1 / z;
    }
    
    /// Computes the reciprocal of each component of the vector.
    /// Equivalent to `1 / self` and returning 0 when self is 0.
    /// @returns {struct.real3} The resulting vector.
    static rcp_safe = function () {
        return new real3(
            x != 0 ? 1 / x : 0,
            y != 0 ? 1 / y : 0,
            z != 0 ? 1 / z : 0
        );
    }
    
    /// Sets this `real3` to the reciprocal of each component of the vector.
    /// Equivalent to `1 / self` and returning 0 when self is 0.
    /// @returns {undefined}
    static self_rcp_safe = function () {
        x = x != 0 ? 1 / x : 0;
        y = y != 0 ? 1 / y : 0;
        z = z != 0 ? 1 / z : 0;
    }
    
    /// Computes the reflection of an incident vector `self` about a normal vector `normal`.
    /// @param {struct.real3} _normal The secondary vector for this math operation.
    /// @returns {struct.real3} The resulting vector.
    static reflect = function (_normal) {
        var _dot = dot(_normal);
        return new real3(
            x - 2 * _dot * _normal.x,
            y - 2 * _dot * _normal.y,
            z - 2 * _dot * _normal.z
        );
    }
    
    /// Sets this `real3` to the reflection of an incident vector `self` about a normal vector `normal`.
    /// @param {struct.real3} _normal The secondary vector for this math operation.
    /// @returns {undefined}
    static self_reflect = function (_normal) {
        var _dot = dot(_normal);
        x = x - 2 * _dot * _normal.x;
        y = y - 2 * _dot * _normal.y;
        z = z - 2 * _dot * _normal.z;
    }
    
    /// Computes the refraction vector for `self` (as incident vector), normal, and refraction index.
    /// @param {struct.real3} _normal The secondary vector for this math operation.
    /// @param {real} _eta The refraction index.
    /// @returns {struct.real3} The resulting vector.
    static refract = function (_normal, _eta) {
        var _dot_n_i = dot(_normal);
        var _k = 1.0 - _eta * _eta * (1.0 - _dot_n_i * _dot_n_i);
        if _k < 0.0 {
            return new real3();
        } else {
            var scale_i = _eta;
            var scale_n = _eta * _dot_n_i + sqrt(_k);
            return new real3(
                scale_i * x - scale_n * _normal.x,
                scale_i * y - scale_n * _normal.y,
                scale_i * z - scale_n * _normal.z
            );
        }
    }
    
    /// Sets this `real3` to the refraction vector for `self` (as incident vector), normal, and refraction index.
    /// @param {struct.real3} _normal The secondary vector for this math operation.
    /// @param {real} _eta The refraction index.
    /// @returns {undefined}
    static self_refract = function (_normal, _eta) {
        var _dot_n_i = dot(_normal);
        var _k = 1.0 - _eta * _eta * (1.0 - _dot_n_i * _dot_n_i);
        if _k < 0.0 {
            x = 0;
            y = 0;
            z = 0;
        } else {
            var scale_i = _eta;
            var scale_n = _eta * _dot_n_i + sqrt(_k);
            x = scale_i * x - scale_n * _normal.x;
            y = scale_i * y - scale_n * _normal.y;
            z = scale_i * z - scale_n * _normal.z;
        }
    }
    
    /// Computes the per-component nearest integer by rounding.
    /// @returns {struct.real3} The resulting vector.
    static round_ = function () { // GML name conflict.
        return new real3(
            round(x),
            round(y),
            round(z)
        );
    }
    
    /// Sets this `real3` to the per-component nearest integer by rounding.
    /// @returns {undefined}
    static self_round = function () {
        x = round(x);
        y = round(y);
        z = round(z);
    }
    
    /// Computes the reciprocal square root of each component of the vector.
    /// @returns {struct.real3} The resulting vector.
    static rsqrt = function () {
        return new real3(
            x != 0 ? 1 / sqrt(x) : infinity,
            y != 0 ? 1 / sqrt(y) : infinity,
            z != 0 ? 1 / sqrt(z) : infinity
        );
    }
    
    /// Sets this `real3` to the reciprocal square root of each component of the vector.
    /// @returns {undefined}
    static self_rsqrt = function () {
        x = x != 0 ? 1 / sqrt(x) : infinity;
        y = y != 0 ? 1 / sqrt(y) : infinity;
        z = z != 0 ? 1 / sqrt(z) : infinity;
    }
        
    /// Computes the per-component clamped numbers between `0` and `1`.
    /// @returns {struct.real3} The resulting vector.
    static saturate = function () {
        return clamp_(0, 1);
    }
    
    /// Sets this `real3` to the per-component clamped numbers between `0` and `1`.
    /// @returns {undefined}
    static self_saturate = function () {
        self_clamp(0, 1);
    }
    
    /// Computes the per-component sign.
    /// When a number is positive, negative or neither it returns 1, -1, or 0, respectively.
    /// @returns {struct.real3} The resulting vector.
    static sign_ = function () { // GML name conflict.
        return new real3(
            sign(x),
            sign(y),
            sign(z)
        );
    }
    
    /// Sets this `real3` to the per-component sign.
    /// When a number is positive, negative or neither it sets the components to 1, -1, or 0, respectively.
    /// @returns {undefined}
    static self_sign = function () {
        x = sign(x);
        y = sign(y);
        z = sign(z);
    }
    
    /// Computes the per-component sine numbers (in radians).
    /// @returns {struct.real3} The resulting vector.
    static sin_ = function () { // GML name conflict.
        return new real3(
            sin(x),
            sin(y),
            sin(z)
        );
    }
    
    /// Sets this `real3` to the per-component sine numbers (in radians).
    /// @returns {undefined}
    static self_sin = function () {
        x = sin(x);
        y = sin(y);
        z = sin(z);
    }
    
    /// Computes the per-component hyperbolic sine numbers.
    /// @returns {struct.real3} The resulting vector.
    static sinh_ = function () { // GML name conflict.
        // Feather ignore GM2023
        return new real3(
            sinh(x),
            sinh(y),
            sinh(z)
        );
    }
    
    /// Sets this `real3` to the per-component hyperbolic sine numbers.
    /// @returns {undefined}
    static self_sinh = function () {
        x = sinh(x);
        y = sinh(y);
        z = sinh(z);
    }
    
    /// Computes the per-component smooth interpolation between 0 and 1 over a given range using a cubic Hermite curve.
    /// @param {struct.real3} _min The lower bound of the input range.
    /// @param {struct.real3} _max The upper bound of the input range.
    /// @returns {struct.real3} The resulting vector.
    static smoothstep_ = function (_min, _max) { // GML name conflict.
        // Feather ignore GM2023
        return new real3(
            smoothstep(_min.x, _max.x, x),
            smoothstep(_min.y, _max.y, y),
            smoothstep(_min.z, _max.z, z)
        );
    }
    
    /// Sets this `real3` to the per-component smooth interpolation between 0 and 1 over a given range using a cubic Hermite curve.
    /// @param {struct.real3} _min The lower bound of the input range.
    /// @param {struct.real3} _max The upper bound of the input range.
    /// @returns {undefined}
    static self_smoothstep = function (_min, _max) {
        x = smoothstep(_min.x, _max.x, x);
        y = smoothstep(_min.y, _max.y, y);
        z = smoothstep(_min.z, _max.z, z);
    }
    
    /// Computes the per-component square root.
    /// @returns {struct.real3} The resulting vector.
    static sqrt_ = function () { // GML name conflict.
        return new real3(
            sqrt(x),
            sqrt(y),
            sqrt(z)
        );
    }
    
    /// Sets this `real3` to the per-component square root.
    /// @returns {undefined}
    static self_sqrt = function () {
        x = sqrt(x);
        y = sqrt(y);
        z = sqrt(z);
    }
    
    /// Computes the component-wise step function.
    /// For each component: returns 0.0 if `self < edge`, else returns 1.0.
    /// @param {struct.real3} _edge The secondary vector for this math operation.
    /// @returns {struct.real3} The resulting vector.
    static step = function (_edge) {
        return new real3(
            x < _edge.x ? 0 : 1,
            y < _edge.y ? 0 : 1,
            z < _edge.z ? 0 : 1
        );
    }
    
    /// Sets this `real3` to the component-wise step function.
    /// For each component: returns 0.0 if `self < edge`, else returns 1.0.
    /// @param {struct.real3} _edge The secondary vector for this math operation.
    /// @returns {undefined}
    static self_step = function (_edge) {
        x = x < _edge.x ? 0 : 1;
        y = y < _edge.y ? 0 : 1;
        z = z < _edge.z ? 0 : 1;
    }
    
    /// Computes the per-component tangent numbers (in radians).
    /// @returns {struct.real3} The resulting vector.
    static tan_ = function () { // GML name conflict.
        return new real3(
            tan(x),
            tan(y),
            tan(z)
        );
    }
    
    /// Sets this `real3` to the per-component tangent numbers (in radians).
    /// @returns {undefined}
    static self_tan = function () {
        x = tan(x);
        y = tan(y);
        z = tan(z);
    }
    
    /// Computes the per-component hyperbolic tangent numbers.
    /// @returns {struct.real3} The resulting vector.
    static tanh_ = function () { // GML name conflict.
        // Feather ignore GM2023
        return new real3(
            tanh(x),
            tanh(y),
            tanh(z)
        );
    }
    
    /// Sets this `real3` to the per-component hyperbolic tangent numbers.
    /// @returns {undefined}
    static self_tanh = function () {
        x = tanh(x);
        y = tanh(y);
        z = tanh(z);
    }
    
    /// Implements `string(self)` (called during struct to string conversions).
    /// @returns {string}
    static toString = function () {
        return "{ x : " + string(x) + ", y : " + string(y) + ", z : " + string(z) + " }";
    }
    
    /// Computes the per-component truncated integer portion.
    /// @returns {struct.real3} The resulting vector.
    static trunc_ = function () { // GML name conflict.
        // Feather ignore GM2023
        return new real3(
            trunc(x),
            trunc(y),
            trunc(z)
        );
    }
    
    /// Sets this `real3` to the per-component truncated integer portion.
    /// @returns {undefined}
    static self_trunc = function () {
        x = trunc(x);
        y = trunc(y);
        z = trunc(z);
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
    
    /// Computes a swizzled vector using the constructor `new real2(self.x, self.z)`.
    /// @returns {struct.real2} The resulting vector.
    static xz = function () {
        return new real2(
            x,
            z
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
    
    /// Computes a swizzled vector using the constructor `new real2(self.y, self.z)`.
    /// @returns {struct.real2} The resulting vector.
    static yz = function () {
        return new real2(
            y,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real2(self.z, self.x)`.
    /// @returns {struct.real2} The resulting vector.
    static zx = function () {
        return new real2(
            z,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real2(self.z, self.y)`.
    /// @returns {struct.real2} The resulting vector.
    static zy = function () {
        return new real2(
            z,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real2(self.z, self.z)`.
    /// @returns {struct.real2} The resulting vector.
    static zz = function () {
        return new real2(
            z,
            z
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
    
    /// Computes a swizzled vector using the constructor `new real3(self.x, self.x, self.z)`.
    /// @returns {struct.real3} The resulting vector.
    static xxz = function () {
        return new real3(
            x,
            x,
            z
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
    
    /// Computes a swizzled vector using the constructor `new real3(self.x, self.y, self.z)`.
    /// @returns {struct.real3} The resulting vector.
    static xyz = function () {
        return new real3(
            x,
            y,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.x, self.z, self.x)`.
    /// @returns {struct.real3} The resulting vector.
    static xzx = function () {
        return new real3(
            x,
            z,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.x, self.z, self.y)`.
    /// @returns {struct.real3} The resulting vector.
    static xzy = function () {
        return new real3(
            x,
            z,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.x, self.z, self.z)`.
    /// @returns {struct.real3} The resulting vector.
    static xzz = function () {
        return new real3(
            x,
            z,
            z
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
    
    /// Computes a swizzled vector using the constructor `new real3(self.y, self.x, self.z)`.
    /// @returns {struct.real3} The resulting vector.
    static yxz = function () {
        return new real3(
            y,
            x,
            z
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
    
    /// Computes a swizzled vector using the constructor `new real3(self.y, self.y, self.z)`.
    /// @returns {struct.real3} The resulting vector.
    static yyz = function () {
        return new real3(
            y,
            y,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.y, self.z, self.x)`.
    /// @returns {struct.real3} The resulting vector.
    static yzx = function () {
        return new real3(
            y,
            z,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.y, self.z, self.y)`.
    /// @returns {struct.real3} The resulting vector.
    static yzy = function () {
        return new real3(
            y,
            z,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.y, self.z, self.z)`.
    /// @returns {struct.real3} The resulting vector.
    static yzz = function () {
        return new real3(
            y,
            z,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.z, self.x, self.x)`.
    /// @returns {struct.real3} The resulting vector.
    static zxx = function () {
        return new real3(
            z,
            x,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.z, self.x, self.y)`.
    /// @returns {struct.real3} The resulting vector.
    static zxy = function () {
        return new real3(
            z,
            x,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.z, self.x, self.z)`.
    /// @returns {struct.real3} The resulting vector.
    static zxz = function () {
        return new real3(
            z,
            x,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.z, self.y, self.x)`.
    /// @returns {struct.real3} The resulting vector.
    static zyx = function () {
        return new real3(
            z,
            y,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.z, self.y, self.y)`.
    /// @returns {struct.real3} The resulting vector.
    static zyy = function () {
        return new real3(
            z,
            y,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.z, self.y, self.z)`.
    /// @returns {struct.real3} The resulting vector.
    static zyz = function () {
        return new real3(
            z,
            y,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.z, self.z, self.x)`.
    /// @returns {struct.real3} The resulting vector.
    static zzx = function () {
        return new real3(
            z,
            z,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.z, self.z, self.y)`.
    /// @returns {struct.real3} The resulting vector.
    static zzy = function () {
        return new real3(
            z,
            z,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.z, self.z, self.z)`.
    /// @returns {struct.real3} The resulting vector.
    static zzz = function () {
        return new real3(
            z,
            z,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.x, self.x, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static xxxx = function () {
        return new real4(
            x,
            x,
            x,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.x, self.x, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static xxxy = function () {
        return new real4(
            x,
            x,
            x,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.x, self.x, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static xxxz = function () {
        return new real4(
            x,
            x,
            x,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.x, self.y, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static xxyx = function () {
        return new real4(
            x,
            x,
            y,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.x, self.y, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static xxyy = function () {
        return new real4(
            x,
            x,
            y,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.x, self.y, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static xxyz = function () {
        return new real4(
            x,
            x,
            y,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.x, self.z, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static xxzx = function () {
        return new real4(
            x,
            x,
            z,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.x, self.z, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static xxzy = function () {
        return new real4(
            x,
            x,
            z,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.x, self.z, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static xxzz = function () {
        return new real4(
            x,
            x,
            z,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.y, self.x, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static xyxx = function () {
        return new real4(
            x,
            y,
            x,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.y, self.x, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static xyxy = function () {
        return new real4(
            x,
            y,
            x,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.y, self.x, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static xyxz = function () {
        return new real4(
            x,
            y,
            x,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.y, self.y, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static xyyx = function () {
        return new real4(
            x,
            y,
            y,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.y, self.y, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static xyyy = function () {
        return new real4(
            x,
            y,
            y,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.y, self.y, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static xyyz = function () {
        return new real4(
            x,
            y,
            y,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.y, self.z, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static xyzx = function () {
        return new real4(
            x,
            y,
            z,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.y, self.z, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static xyzy = function () {
        return new real4(
            x,
            y,
            z,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.y, self.z, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static xyzz = function () {
        return new real4(
            x,
            y,
            z,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.z, self.x, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static xzxx = function () {
        return new real4(
            x,
            z,
            x,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.z, self.x, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static xzxy = function () {
        return new real4(
            x,
            z,
            x,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.z, self.x, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static xzxz = function () {
        return new real4(
            x,
            z,
            x,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.z, self.y, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static xzyx = function () {
        return new real4(
            x,
            z,
            y,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.z, self.y, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static xzyy = function () {
        return new real4(
            x,
            z,
            y,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.z, self.y, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static xzyz = function () {
        return new real4(
            x,
            z,
            y,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.z, self.z, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static xzzx = function () {
        return new real4(
            x,
            z,
            z,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.z, self.z, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static xzzy = function () {
        return new real4(
            x,
            z,
            z,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.z, self.z, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static xzzz = function () {
        return new real4(
            x,
            z,
            z,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.x, self.x, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static yxxx = function () {
        return new real4(
            y,
            x,
            x,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.x, self.x, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static yxxy = function () {
        return new real4(
            y,
            x,
            x,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.x, self.x, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static yxxz = function () {
        return new real4(
            y,
            x,
            x,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.x, self.y, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static yxyx = function () {
        return new real4(
            y,
            x,
            y,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.x, self.y, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static yxyy = function () {
        return new real4(
            y,
            x,
            y,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.x, self.y, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static yxyz = function () {
        return new real4(
            y,
            x,
            y,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.x, self.z, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static yxzx = function () {
        return new real4(
            y,
            x,
            z,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.x, self.z, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static yxzy = function () {
        return new real4(
            y,
            x,
            z,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.x, self.z, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static yxzz = function () {
        return new real4(
            y,
            x,
            z,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.y, self.x, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static yyxx = function () {
        return new real4(
            y,
            y,
            x,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.y, self.x, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static yyxy = function () {
        return new real4(
            y,
            y,
            x,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.y, self.x, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static yyxz = function () {
        return new real4(
            y,
            y,
            x,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.y, self.y, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static yyyx = function () {
        return new real4(
            y,
            y,
            y,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.y, self.y, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static yyyy = function () {
        return new real4(
            y,
            y,
            y,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.y, self.y, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static yyyz = function () {
        return new real4(
            y,
            y,
            y,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.y, self.z, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static yyzx = function () {
        return new real4(
            y,
            y,
            z,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.y, self.z, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static yyzy = function () {
        return new real4(
            y,
            y,
            z,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.y, self.z, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static yyzz = function () {
        return new real4(
            y,
            y,
            z,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.z, self.x, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static yzxx = function () {
        return new real4(
            y,
            z,
            x,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.z, self.x, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static yzxy = function () {
        return new real4(
            y,
            z,
            x,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.z, self.x, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static yzxz = function () {
        return new real4(
            y,
            z,
            x,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.z, self.y, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static yzyx = function () {
        return new real4(
            y,
            z,
            y,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.z, self.y, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static yzyy = function () {
        return new real4(
            y,
            z,
            y,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.z, self.y, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static yzyz = function () {
        return new real4(
            y,
            z,
            y,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.z, self.z, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static yzzx = function () {
        return new real4(
            y,
            z,
            z,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.z, self.z, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static yzzy = function () {
        return new real4(
            y,
            z,
            z,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.z, self.z, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static yzzz = function () {
        return new real4(
            y,
            z,
            z,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.x, self.x, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static zxxx = function () {
        return new real4(
            z,
            x,
            x,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.x, self.x, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static zxxy = function () {
        return new real4(
            z,
            x,
            x,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.x, self.x, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static zxxz = function () {
        return new real4(
            z,
            x,
            x,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.x, self.y, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static zxyx = function () {
        return new real4(
            z,
            x,
            y,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.x, self.y, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static zxyy = function () {
        return new real4(
            z,
            x,
            y,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.x, self.y, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static zxyz = function () {
        return new real4(
            z,
            x,
            y,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.x, self.z, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static zxzx = function () {
        return new real4(
            z,
            x,
            z,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.x, self.z, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static zxzy = function () {
        return new real4(
            z,
            x,
            z,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.x, self.z, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static zxzz = function () {
        return new real4(
            z,
            x,
            z,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.y, self.x, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static zyxx = function () {
        return new real4(
            z,
            y,
            x,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.y, self.x, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static zyxy = function () {
        return new real4(
            z,
            y,
            x,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.y, self.x, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static zyxz = function () {
        return new real4(
            z,
            y,
            x,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.y, self.y, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static zyyx = function () {
        return new real4(
            z,
            y,
            y,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.y, self.y, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static zyyy = function () {
        return new real4(
            z,
            y,
            y,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.y, self.y, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static zyyz = function () {
        return new real4(
            z,
            y,
            y,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.y, self.z, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static zyzx = function () {
        return new real4(
            z,
            y,
            z,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.y, self.z, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static zyzy = function () {
        return new real4(
            z,
            y,
            z,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.y, self.z, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static zyzz = function () {
        return new real4(
            z,
            y,
            z,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.z, self.x, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static zzxx = function () {
        return new real4(
            z,
            z,
            x,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.z, self.x, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static zzxy = function () {
        return new real4(
            z,
            z,
            x,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.z, self.x, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static zzxz = function () {
        return new real4(
            z,
            z,
            x,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.z, self.y, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static zzyx = function () {
        return new real4(
            z,
            z,
            y,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.z, self.y, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static zzyy = function () {
        return new real4(
            z,
            z,
            y,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.z, self.y, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static zzyz = function () {
        return new real4(
            z,
            z,
            y,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.z, self.z, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static zzzx = function () {
        return new real4(
            z,
            z,
            z,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.z, self.z, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static zzzy = function () {
        return new real4(
            z,
            z,
            z,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.z, self.z, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static zzzz = function () {
        return new real4(
            z,
            z,
            z,
            z
        );
    }
}