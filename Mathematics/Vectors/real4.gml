/// Creates a vector containing 4 `real` values.
/// @param {real} _x The x-component of the vector.
/// @param {real} _y The y-component of the vector.
/// @param {real} _z The z-component of the vector.
/// @param {real} _w The w-component of the vector.
function real4(_x = 0, _y = 0, _z = 0, _w = 0) constructor {
    x = _x;
    y = _y;
    z = _z;
    w = _w;
    
    /// Returns a new `real4` with `self` + `other`.
    /// @param {struct.real4} _other The secondary vector for this math operation.
    /// @returns {struct.real4} The resulting vector.
    static add = function (_other) {
        return new real4(
            x + _other.x,
            y + _other.y,
            z + _other.z,
            w + _other.w
        );
    }
    
    /// Sets this `real4` to the result of `self` + `other`.
    /// @param {struct.real4} _other The secondary vector for this math operation.
    static self_add = function (_other) {
        x += _other.x;
        y += _other.y;
        z += _other.z;
        w += _other.w;
    }
    
    /// Returns a new `real4` with `self` + `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {struct.real4} The resulting vector.
    static add_real = function (_other) {
        return new real4(
            x + _other,
            y + _other,
            z + _other,
            w + _other
        );
    }
    
    /// Sets this `real4` to the result of `self` + `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {undefined}
    static self_add_real = function (_other) {
        x += _other;
        y += _other;
        z += _other;
        w += _other;
    }
    
    /// Returns a new `real4` with `self` - `other`.
    /// @param {struct.real4} _other The secondary vector for this math operation.
    /// @returns {struct.real4} The resulting vector.
    static sub = function (_other) {
        return new real4(
            x - _other.x,
            y - _other.y,
            z - _other.z,
            w - _other.w
        );
    }
    
    /// Sets this `real4` to the result of `self` - `other`.
    /// @param {struct.real4} _other The secondary vector for this math operation.
    /// @returns {undefined}
    static self_sub = function (_other) {
        x -= _other.x;
        y -= _other.y;
        z -= _other.z;
        w -= _other.w;
    }
    
    /// Returns a new `real4` with `self` - `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {struct.real4} The resulting vector.
    static sub_real = function (_other) {
        return new real4(
            x - _other,
            y - _other,
            z - _other,
            w - _other
        );
    }
    
    /// Sets this `real4` to the result of `self` - `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {undefined}
    static self_sub_real = function (_other) {
        x -= _other;
        y -= _other;
        z -= _other;
        w -= _other;
    }
    
    /// Returns a new `real4` with `self` * `other`.
    /// @param {struct.real4} _other The secondary vector for this math operation.
    /// @returns {struct.real4} The resulting vector.
    static mul = function (_other) {
        return new real4(
            x * _other.x,
            y * _other.y,
            z * _other.z,
            w * _other.w
        );
    }
    
    /// Sets this `real4` to the result of `self` * `other`.
    /// @param {struct.real4} _other The secondary vector for this math operation.
    /// @returns {undefined}
    static self_mul = function (_other) {
        x *= _other.x;
        y *= _other.y;
        z *= _other.z;
        w *= _other.w;
    }
    
    /// Returns a new `real4` with `self` * `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {struct.real4} The resulting vector.
    static mul_real = function (_other) {
        return new real4(
            x * _other,
            y * _other,
            z * _other,
            w * _other
        );
    }
    
    /// Sets this `real4` to the result of `self` * `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {undefined}
    static self_mul_real = function (_other) {
        x *= _other;
        y *= _other;
        z *= _other;
        w *= _other;
    }
    
    /// Returns a new `real4` with `self` / `other`.
    /// @param {struct.real4} _other The secondary vector for this math operation.
    /// @returns {struct.real4} The resulting vector.
    static div_ = function (_other) { // GML name conflict.
        return new real4(
            x / _other.x,
            y / _other.y,
            z / _other.z,
            w / _other.w
        );
    }
    
    /// Sets this `real4` to the result of `self` / `other`.
    /// @param {struct.real4} _other The secondary vector for this math operation.
    /// @returns {undefined}
    static self_div = function (_other) {
        x /= _other.x;
        y /= _other.y;
        z /= _other.z;
        w /= _other.w;
    }
    
    /// Returns a new `real4` with `self` / `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {struct.real4} The resulting vector.
    static div_real = function (_other) {
        return new real4(
            x / _other,
            y / _other,
            z / _other,
            w / _other
        );
    }
    
    /// Sets this `real4` to the result of `self` / `other`.
    /// @param {real} _other The real for this math operation.
    /// @returns {undefined}
    static self_div_real = function (_other) {
        x /= _other;
        y /= _other;
        z /= _other;
        w /= _other;
    }
    
    /// Returns a new `real4` with -`self` (negated).
    /// @returns {struct.real4} The resulting vector.
    static neg = function () {
        return new real4(
            -x,
            -y,
            -z,
            -w
        );
    }
    
    /// Sets this `real4` to the result of -`self` (negated).
    /// @returns {undefined}
    static self_neg = function () {
        x = -x;
        y = -y;
        z = -z;
        w = -w;
    }
    
    /// Returns `true` when `self` == `other` else `false`.
    /// @param {struct.real4} _other The secondary vector to compare against.
    /// @returns {bool} The result of the equality check. 
    static eq = function (_other) {
        return self.x == _other.x && self.y == _other.y && self.z == _other.z && self.w == _other.w;
    }
    
    /// Returns `true` when `self` != `other` else `false`.
    /// @param {struct.real4} _other The secondary vector to compare against.
    /// @returns {bool} The result of the equality check. 
    static ne = function (_other) {
        return self.x != _other.x && self.y != _other.y && self.z != _other.z && self.w != _other.w;
    }
    
    /// Computes the per-component absolute numbers.
    /// @returns {struct.real4} The resulting vector.
    static abs_ = function () { // GML name conflict.
        return new real4(
            abs(x),
            abs(y),
            abs(z),
            abs(w)
        );
    }
    
    /// Sets this `real4` to the per-component absolute numbers.
    /// @returns {undefined}
    static self_abs = function () {
        x = abs(x);
        y = abs(y);
        z = abs(z);
        w = abs(w);
    }
    
    /// Computes the per-component arccosine numbers (in radians).
    /// Each component should be a value within the range of -1 to 1.
    /// Return values are in the range 0, pi or errors if the number is outside the range -1 to 1.
    /// @returns {struct.real4} The resulting vector.
    static acos = function () {
        return new real4(
            arccos(x),
            arccos(y),
            arccos(z),
            arccos(w)
        );
    }
    
    /// Sets this `real4` to the per-component arccosine numbers (in radians).
    /// Each component should be a value within the range of -1 to 1.
    /// Assigned values are in the range 0, pi or errors if the number is outside the range -1 to 1.
    /// @returns {undefined}
    static self_acos = function () {
        x = arccos(x);
        y = arccos(y);
        z = arccos(z);
        w = arccos(w);
    }
    
    /// Determines if all components of the vector are non-zero.
    /// @returns {bool}
    static all_ = function () { // GML name conflict.
        return x != 0.0 && y != 0.0 && z != 0.0 && w != 0.0;
    }
    
    /// Determines if any components of the vector are non-zero.
    /// @returns {bool}
    static any = function () {
        return x != 0.0 || y != 0.0 || z != 0.0 || w != 0.0;
    }
    
    /// Computes the per-component arcsine numbers (in radians).
    /// Each component should be a value within the range of -1 to 1.
    /// Return values are in the range -pi/2 to pi/2 or errors if the number is outside the range -1 to 1.
    /// @returns {struct.real4} The resulting vector.
    static asin = function () {
        return new real4(
            arcsin(x),
            arcsin(y),
            arcsin(z),
            arcsin(w)
        );
    }
    
    /// Sets this `real4` to the per-component arcsine numbers (in radians).
    /// Each component should be a value within the range of -1 to 1.
    /// Assigned values are in the range -pi/2 to pi/2 or errors if the number is outside the range -1 to 1.
    /// @returns {undefined}
    static self_asin = function () {
        x = arcsin(x);
        y = arcsin(y);
        z = arcsin(z);
        w = arcsin(w);
    }
    
    /// Computes the per-component arctangent numbers (in radians).
    /// Return values are in the range -pi/2 to pi/2.
    /// @returns {struct.real4} The resulting vector.
    static atan = function () {
        return new real4(
            arctan(x),
            arctan(y),
            arctan(z),
            arctan(w)
        );
    }
    
    /// Sets this `real4` to the per-component arctangent numbers (in radians).
    /// Assigned values are in the range -pi/2 to pi/2.
    /// @returns {undefined}
    static self_atan = function () {
        x = arctan(x);
        y = arctan(y);
        z = arctan(z);
        w = arctan(w);
    }
    
    /// Computes the per-component smallest integers greater than or equal to `self.x` and `self.y` and `self.z` and `self.w` respectively.
    /// @returns {struct.real4} The resulting vector.
    static ceil_ = function () { // GML name conflict.
        return new real4(
            ceil(x),
            ceil(y),
            ceil(z),
            ceil(w)
        );
    }
    
    /// Sets this `real4` to the per-component smallest integers greater than or equal to `self.x` and `self.y` and `self.z` and `self.w` respectively.
    /// @returns {undefined}
    static self_ceil = function () {
        x = ceil(x);
        y = ceil(y);
        z = ceil(z);
        w = ceil(w);
    }
    
    /// Computes the per-component clamped numbers between `min` and `max`.
    /// @param {real} _min The minimum value to clamp between.
    /// @param {real} _max The maximum value to clamp between.
    /// @returns {struct.real4} The resulting vector.
    static clamp_ = function (_min, _max) { // GML name conflict.
        return new real4(
            clamp(x, _min, _max),
            clamp(y, _min, _max),
            clamp(z, _min, _max),
            clamp(w, _min, _max)
        );
    }
    
    /// Sets this `real4` to the per-component clamped numbers between `min` and `max`.
    /// @param {real} _min The minimum value to clamp between.
    /// @param {real} _max The maximum value to clamp between.
    /// @returns {undefined}
    static self_clamp = function (_min, _max) {
        x = clamp(x, _min, _max);
        y = clamp(y, _min, _max);
        z = clamp(z, _min, _max);
        w = clamp(w, _min, _max);
    }
    
    /// Returns a cloned copy of this `real4`.
    /// @returns {struct.real4}
    static clone = function () {
        return new real4(x, y, z, w);
    }
    
    /// Computes the per-component cosine numbers (in radians).
    /// @returns {struct.real4} The resulting vector.
    static cos_ = function () { // GML name conflict.
        return new real4(
            cos(x),
            cos(y),
            cos(z),
            cos(w)
        );
    }
    
    /// Sets this `real4` to the per-component cosine numbers (in radians).
    /// @returns {undefined}
    static self_cos = function () {
        x = cos(x);
        y = cos(y);
        z = cos(z);
        w = cos(w);
    }
    
    /// Computes the per-component hyperbolic cosine numbers.
    /// @returns {struct.real4} The resulting vector.
    static cosh_ = function () { // GML name conflict.
        // Feather ignore GM2023
        return new real4(
            cosh(x),
            cosh(y),
            cosh(z),
            cosh(w)
        );
    }
    
    /// Sets this `real4` to the per-component hyperbolic cosine numbers.
    /// @returns {undefined}
    static self_cosh = function () {
        x = cosh(x);
        y = cosh(y);
        z = cosh(z);
        w = cosh(w);
    }
    
    /// Converts the per-component numbers from radians to degrees.
    /// @returns {struct.real4} The resulting vector.
    static degrees = function () {
        return new real4(
            radtodeg(x),
            radtodeg(y),
            radtodeg(z),
            radtodeg(w)
        );
    }
    
    /// Sets this `real4` to the converted per-component numbers from radians to degrees.
    /// @returns {undefined}
    static self_degrees = function () {
        x = radtodeg(x);
        y = radtodeg(y);
        z = radtodeg(z);
        w = radtodeg(w);
    }
    
    /// Computes the distance scalar between two vectors.
    /// @param {struct.real4} _other The secondary vector for this math operation.
    /// @returns {real} The distance scalar between two vectors.
    static distance = function (_other) {
        var _dx = x - _other.x;
        var _dy = y - _other.y;
        var _dz = z - _other.z;
        var _dw = w - _other.w;
        return sqrt(_dx * _dx + _dy * _dy + _dz * _dz + _dw * _dw);
    }
    
    /// Computes the dot product of two vectors.
    /// @param {struct.real4} _other The secondary vector for this math operation.
    /// @returns {real} The dot product of two vectors.
    static dot = function (_other) {
        return x * _other.x + y * _other.y + z * _other.z + w * _other.w;
    }
    
    /// Computes the per-component e^(self), the exponential function.
    /// @returns {struct.real4} The resulting vector.
    static exp_ = function () { // GML name conflict.
        return new real4(
            exp(x),
            exp(y),
            exp(z),
            exp(w)
        );
    }
    
    /// Sets this `real4` to the per-component e^(self), the exponential function.
    /// @returns {undefined}
    static self_exp = function () {
        x = exp(x);
        y = exp(y);
        z = exp(z);
        w = exp(w);
    }
    
    /// Computes the per-component 2^(self).
    /// @returns {struct.real4} The resulting vector.
    static exp2 = function () {
        return new real4(
            power(2, x),
            power(2, y),
            power(2, z),
            power(2, w)
        );
    }
    
    /// Sets this `real4` to the per-component 2^(self).
    /// @returns {undefined}
    static self_exp2 = function () {
        x = power(2, x);
        y = power(2, y);
        z = power(2, z);
        w = power(2, w);
    }
    
    /// Computes the per-component largest integers less than or equal to `self.x` and `self.y` and `self.z` and `self.w` respectively.
    /// @returns {struct.real4} The resulting vector.
    static floor_ = function () { // GML name conflict.
        return new real4(
            floor(x),
            floor(y),
            floor(z),
            floor(w)
        );
    }
    
    /// Sets this `real4` to the per-component largest integers less than or equal to `self.x` and `self.y` and `self.z` and `self.w` respectively.
    /// @returns {undefined}
    static self_floor = function () {
        x = floor(x);
        y = floor(y);
        z = floor(z);
        w = floor(w);
    }
    
    /// Computes the floating-point remainder of division for each component.
    /// @param {struct.real4} _other The secondary vector for this math operation.
    /// @returns {struct.real4} The resulting vector.
    static fmod = function (_other) {
        return new real4(
            x % _other.x,
            y % _other.y,
            z % _other.z,
            w % _other.w
        );
    }
    
    /// Sets this `real4` to the floating-point remainder of division for each component.
    /// @param {struct.real4} _other The secondary vector for this math operation.
    /// @returns {undefined}
    static self_fmod = function (_other) {
        x %= _other.x;
        y %= _other.y;
        z %= _other.z;
        w %= _other.w;
    }
    
    /// Computes the fractional (or decimal) part of each component; which is greater than or equal to 0 and less than 1.
    /// @returns {struct.real4} The resulting vector.
    static frac_ = function () { // GML name conflict.
        return new real4(
            frac(x),
            frac(y),
            frac(z),
            frac(w)
        );
    }
    
    /// Sets this `real4` to the fractional (or decimal) part of each component; which is greater than or equal to 0 and less than 1.
    /// @returns {undefined}
    static self_frac = function () {
        x = frac(x);
        y = frac(y);
        z = frac(z);
        w = frac(w);
    }
    
    /// Computes `value * 2^exponent` for each component of the vector.
    /// @param {real} _exp The exponent to raise 2 to.
    /// @returns {struct.real4} The resulting vector.
    static ldexp_ = function (_exp) { // GML name conflict.
        // Feather ignore GM2023
        return new real4(
            ldexp(x, _exp),
            ldexp(y, _exp),
            ldexp(z, _exp),
            ldexp(w, _exp)
        );
    }
    
    /// Sets this `real4` to `value * 2^exponent` for each component of the vector.
    /// @param {real} _exp The exponent to raise 2 to.
    /// @returns {undefined}
    static self_ldexp = function (_exp) {
        x = ldexp(x, _exp);
        y = ldexp(y, _exp);
        z = ldexp(z, _exp);
        w = ldexp(w, _exp);
    }
    
    /// Computes the length scalar of this vector.
    /// @returns {real} The length scalar of this vector.
    static length = function () {
        return sqrt(x * x + y * y + z * z + w * w);
    }
    
    /// Computes the squared length (magnitude) scalar of this vector.
    /// @returns {real} The squared length scalar of this vector.
    static length_squared = function () {
        return x * x + y * y + z * z + w * w;
    }
    
    /// Computes the linear interpolation between two vectors.
    /// @param {struct.real4} _other The secondary vector for this math operation.
    /// @param {real} _t The interpolant t (unbounded).
    /// @returns {struct.real4} The resulting vector.
    static lerp_ = function (_other, _t) { // GML name conflict.
        return new real4(
            lerp(x, _other.x, _t),
            lerp(y, _other.y, _t),
            lerp(z, _other.z, _t),
            lerp(w, _other.w, _t)
        );
    }
    
    /// Sets this `real4` to the linear interpolation between two vectors.
    /// @param {struct.real4} _other The secondary vector for this math operation.
    /// @param {real} _t The interpolant t (unbounded).
    /// @returns {undefined}
    static self_lerp = function (_other, _t) {
        x = lerp(x, _other.x, _t);
        y = lerp(y, _other.y, _t);
        z = lerp(z, _other.z, _t);
        w = lerp(w, _other.w, _t);
    }
    
    /// Computes the natural logarithm (base e) of each component of the vector.
    /// @returns {struct.real4} The resulting vector.
    static log = function () {
        return new real4(
            ln(x),
            ln(y),
            ln(z),
            ln(w)
        );
    }
    
    /// Sets this `real4` to the natural logarithm (base e) of each component of the vector.
    /// @returns {undefined}
    static self_log = function () {
        x = ln(x);
        y = ln(y);
        z = ln(z);
        w = ln(w);
    }
    
    /// Computes the natural logarithm (base 10) of each component of the vector.
    /// @returns {struct.real4} The resulting vector.
    static log10_ = function () { // GML name conflict.
        return new real4(
            log10(x),
            log10(y),
            log10(z),
            log10(w)
        );
    }
    
    /// Sets this `real4` to the natural logarithm (base 10) of each component of the vector.
    /// @returns {undefined}
    static self_log10 = function () {
        x = log10(x);
        y = log10(y);
        z = log10(z);
        w = log10(w);
    }
    
    /// Computes the natural logarithm (base 2) of each component of the vector.
    /// @returns {struct.real4} The resulting vector.
    static log2_ = function () { // GML name conflict.
        return new real4(
            log2(x),
            log2(y),
            log2(z),
            log2(w)
        );
    }
    
    /// Sets this `real4` to the natural logarithm (base 2) of each component of the vector.
    /// @returns {undefined}
    static self_log2 = function () {
        x = log2(x);
        y = log2(y);
        z = log2(z);
        w = log2(w);
    }
    
    /// Computes the multiply-add operation: (self * b) + c.
    /// @param {struct.real4} _b The vector for the multiply operation.
    /// @param {struct.real4} _c The vector for the addition operation.
    /// @returns {struct.real4} The resulting vector.
    static mad = function (_b, _c) {
        return new real4(
            x * _b.x + _c.x,
            y * _b.y + _c.y,
            z * _b.z + _c.z,
            w * _b.w + _c.w
        );
    }
    
    /// Sets this `real4` to the multiply-add operation: (self * b) + c.
    /// @param {struct.real4} _b The vector for the multiply operation.
    /// @param {struct.real4} _c The vector for the addition operation.
    /// @returns {undefined}
    static self_mad = function (_b, _c) {
        x = x * _b.x + _c.x;
        y = y * _b.y + _c.y;
        z = z * _b.z + _c.z;
        w = w * _b.w + _c.w;
    }
    
    /// Computes the component-wise maximum of two vectors.
    /// @param {struct.real4} _other The secondary vector for this math operation.
    /// @returns {struct.real4} The resulting vector.
    static max_ = function (_other) { // GML name conflict.
        return new real4(
            max(x, _other.x),
            max(y, _other.y),
            max(z, _other.z),
            max(w, _other.w)
        );
    }
    
    /// Sets this `real4` to the component-wise maximum of two vectors.
    /// @param {struct.real4} _other The secondary vector for this math operation.
    /// @returns {undefined}
    static self_max = function (_other) {
        x = max(x, _other.x);
        y = max(y, _other.y);
        z = max(z, _other.z);
        w = max(w, _other.w);
    }
    
    /// Computes the component-wise minimum of two vectors.
    /// @param {struct.real4} _other The secondary vector for this math operation.
    /// @returns {struct.real4} The resulting vector.
    static min_ = function (_other) { // GML name conflict.
        return new real4(
            min(x, _other.x),
            min(y, _other.y),
            min(z, _other.z),
            min(w, _other.w)
        );
    }
    
    /// Sets this `real4` to the component-wise minimum of two vectors.
    /// @param {struct.real4} _other The secondary vector for this math operation.
    /// @returns {undefined}
    static self_min = function (_other) {
        x = min(x, _other.x);
        y = min(y, _other.y);
        z = min(z, _other.z);
        w = min(w, _other.w);
    }
    
    /// Computes the normalized vector (unit vector) of `self`.
    /// @returns {struct.real4} The resulting vector.
    static normalize = function () {
        var _length = length();
        if _length != 0 {
            return new real4 (
                x / _length,
                y / _length,
                z / _length,
                w / _length
            );
        } else {
            // return the zero vector if the input vector has zero length.
            return new real4();
        }
    }
    
    /// Sets this `real4` to the normalized vector (unit vector) of `self`.
    /// @returns {undefined}
    static self_normalize = function () {
        var _length = length();
        if _length != 0 {
            x /= _length;
            y /= _length;
            z /= _length;
            w /= _length;
        } else {
            // set to zero vector if the input vector has zero length.
            x = 0;
            y = 0;
            z = 0;
            w = 0;
        }
    }
    
    /// Computes the component-wise power: `self^exponent`.
    /// @param {real} _n The power to raise this vector to.
    /// @returns {struct.real4} The resulting vector.
    static pow = function (_n) {
        return new real4(
            power(x, _n),
            power(y, _n),
            power(z, _n),
            power(w, _n)
        );
    }
    
    /// Sets this `real4` to the component-wise power: `self^exponent`.
    /// @param {real} _n The power to raise this vector to.
    /// @returns {undefined}
    static self_pow = function (_n) {
        x = power(x, _n);
        y = power(y, _n);
        z = power(z, _n);
        w = power(w, _n);
    }
    
    /// Converts the per-component numbers from degrees to radians.
    /// @returns {struct.real4} The resulting vector.
    static radians = function () {
        return new real4(
            degtorad(x),
            degtorad(y),
            degtorad(z),
            degtorad(w)
        );
    }
    
    /// Sets this `real4` to the converted per-component numbers from degrees to radians.
    /// @returns {undefined}
    static self_radians = function () {
        x = degtorad(x);
        y = degtorad(y);
        z = degtorad(z);
        w = degtorad(w);
    }
    
    /// Computes the reciprocal of each component of the vector.
    /// Equivalent to `1 / self`.
    /// @returns {struct.real4} The resulting vector.
    static rcp = function () {
        return new real4(
            1 / x,
            1 / y,
            1 / z,
            1 / w
        );
    }
    
    /// Sets this `real4` to the reciprocal of each component of the vector.
    /// Equivalent to `1 / self`.
    /// @returns {undefined}
    static self_rcp = function () {
        x = 1 / x;
        y = 1 / y;
        z = 1 / z;
        w = 1 / w;
    }
    
    /// Computes the reciprocal of each component of the vector.
    /// Equivalent to `1 / self` and returning 0 when self is 0.
    /// @returns {struct.real4} The resulting vector.
    static rcp_safe = function () {
        return new real4(
            x != 0 ? 1 / x : 0,
            y != 0 ? 1 / y : 0,
            z != 0 ? 1 / z : 0,
            w != 0 ? 1 / w : 0
        );
    }
    
    /// Sets this `real4` to the reciprocal of each component of the vector.
    /// Equivalent to `1 / self` and returning 0 when self is 0.
    /// @returns {undefined}
    static self_rcp_safe = function () {
        x = x != 0 ? 1 / x : 0;
        y = y != 0 ? 1 / y : 0;
        z = z != 0 ? 1 / z : 0;
        w = w != 0 ? 1 / w : 0;
    }
    
    /// Computes the reflection of an incident vector `self` about a normal vector `normal`.
    /// @param {struct.real4} _normal The secondary vector for this math operation.
    /// @returns {struct.real4} The resulting vector.
    static reflect = function (_normal) {
        var _dot = dot(_normal);
        return new real4(
            x - 2 * _dot * _normal.x,
            y - 2 * _dot * _normal.y,
            z - 2 * _dot * _normal.z,
            w - 2 * _dot * _normal.w
        );
    }
    
    /// Sets this `real4` to the reflection of an incident vector `self` about a normal vector `normal`.
    /// @param {struct.real4} _normal The secondary vector for this math operation.
    /// @returns {undefined}
    static self_reflect = function (_normal) {
        var _dot = dot(_normal);
        x = x - 2 * _dot * _normal.x;
        y = y - 2 * _dot * _normal.y;
        z = z - 2 * _dot * _normal.z;
        w = w - 2 * _dot * _normal.w;
    }
    
    /// Computes the refraction vector for `self` (as incident vector), normal, and refraction index.
    /// @param {struct.real4} _normal The secondary vector for this math operation.
    /// @param {real} _eta The refraction index.
    /// @returns {struct.real4} The resulting vector.
    static refract = function (_normal, _eta) {
        var _dot_n_i = dot(_normal);
        var _k = 1.0 - _eta * _eta * (1.0 - _dot_n_i * _dot_n_i);
        if _k < 0.0 {
            return new real4();
        } else {
            var scale_i = _eta;
            var scale_n = _eta * _dot_n_i + sqrt(_k);
            return new real4(
                scale_i * x - scale_n * _normal.x,
                scale_i * y - scale_n * _normal.y,
                scale_i * z - scale_n * _normal.z,
                scale_i * w - scale_n * _normal.w
            );
        }
    }
    
    /// Sets this `real4` to the refraction vector for `self` (as incident vector), normal, and refraction index.
    /// @param {struct.real4} _normal The secondary vector for this math operation.
    /// @param {real} _eta The refraction index.
    /// @returns {undefined}
    static self_refract = function (_normal, _eta) {
        var _dot_n_i = dot(_normal);
        var _k = 1.0 - _eta * _eta * (1.0 - _dot_n_i * _dot_n_i);
        if _k < 0.0 {
            x = 0;
            y = 0;
            z = 0;
            w = 0;
        } else {
            var scale_i = _eta;
            var scale_n = _eta * _dot_n_i + sqrt(_k);
            x = scale_i * x - scale_n * _normal.x;
            y = scale_i * y - scale_n * _normal.y;
            z = scale_i * z - scale_n * _normal.z;
            w = scale_i * w - scale_n * _normal.w;
        }
    }
    
    /// Computes the per-component nearest integer by rounding.
    /// @returns {struct.real4} The resulting vector.
    static round_ = function () { // GML name conflict.
        return new real4(
            round(x),
            round(y),
            round(z),
            round(w)
        );
    }
    
    /// Sets this `real4` to the per-component nearest integer by rounding.
    /// @returns {undefined}
    static self_round = function () {
        x = round(x);
        y = round(y);
        z = round(z);
        w = round(w);
    }
    
    /// Computes the reciprocal square root of each component of the vector.
    /// @returns {struct.real4} The resulting vector.
    static rsqrt = function () {
        return new real4(
            x != 0 ? 1 / sqrt(x) : infinity,
            y != 0 ? 1 / sqrt(y) : infinity,
            z != 0 ? 1 / sqrt(z) : infinity,
            w != 0 ? 1 / sqrt(w) : infinity
        );
    }
    
    /// Sets this `real4` to the reciprocal square root of each component of the vector.
    /// @returns {undefined}
    static self_rsqrt = function () {
        x = x != 0 ? 1 / sqrt(x) : infinity;
        y = y != 0 ? 1 / sqrt(y) : infinity;
        z = z != 0 ? 1 / sqrt(z) : infinity;
        w = w != 0 ? 1 / sqrt(w) : infinity;
    }
        
    /// Computes the per-component clamped numbers between `0` and `1`.
    /// @returns {struct.real4} The resulting vector.
    static saturate = function () {
        return clamp_(0, 1);
    }
    
    /// Sets this `real4` to the per-component clamped numbers between `0` and `1`.
    /// @returns {undefined}
    static self_saturate = function () {
        self_clamp(0, 1);
    }
    
    /// Computes the per-component sign.
    /// When a number is positive, negative or neither it returns 1, -1, or 0, respectively.
    /// @returns {struct.real4} The resulting vector.
    static sign_ = function () { // GML name conflict.
        return new real4(
            sign(x),
            sign(y),
            sign(z),
            sign(w)
        );
    }
    
    /// Sets this `real4` to the per-component sign.
    /// When a number is positive, negative or neither it sets the components to 1, -1, or 0, respectively.
    /// @returns {undefined}
    static self_sign = function () {
        x = sign(x);
        y = sign(y);
        z = sign(z);
        w = sign(w);
    }
    
    /// Computes the per-component sine numbers (in radians).
    /// @returns {struct.real4} The resulting vector.
    static sin_ = function () { // GML name conflict.
        return new real4(
            sin(x),
            sin(y),
            sin(z),
            sin(w)
        );
    }
    
    /// Sets this `real4` to the per-component sine numbers (in radians).
    /// @returns {undefined}
    static self_sin = function () {
        x = sin(x);
        y = sin(y);
        z = sin(z);
        w = sin(w);
    }
    
    /// Computes the per-component hyperbolic sine numbers.
    /// @returns {struct.real4} The resulting vector.
    static sinh_ = function () { // GML name conflict.
        // Feather ignore GM2023
        return new real4(
            sinh(x),
            sinh(y),
            sinh(z),
            sinh(w)
        );
    }
    
    /// Sets this `real4` to the per-component hyperbolic sine numbers.
    /// @returns {undefined}
    static self_sinh = function () {
        x = sinh(x);
        y = sinh(y);
        z = sinh(z);
        w = sinh(w);
    }
    
    /// Computes the per-component smooth interpolation between 0 and 1 over a given range using a cubic Hermite curve.
    /// @param {struct.real4} _min The lower bound of the input range.
    /// @param {struct.real4} _max The upper bound of the input range.
    /// @returns {struct.real4} The resulting vector.
    static smoothstep_ = function (_min, _max) { // GML name conflict.
        // Feather ignore GM2023
        return new real4(
            smoothstep(_min.x, _max.x, x),
            smoothstep(_min.y, _max.y, y),
            smoothstep(_min.z, _max.z, z),
            smoothstep(_min.w, _max.w, w)
        );
    }
    
    /// Sets this `real4` to the per-component smooth interpolation between 0 and 1 over a given range using a cubic Hermite curve.
    /// @param {struct.real4} _min The lower bound of the input range.
    /// @param {struct.real4} _max The upper bound of the input range.
    /// @returns {undefined}
    static self_smoothstep = function (_min, _max) {
        x = smoothstep(_min.x, _max.x, x);
        y = smoothstep(_min.y, _max.y, y);
        z = smoothstep(_min.z, _max.z, z);
        w = smoothstep(_min.w, _max.w, w);
    }
    
    /// Computes the per-component square root.
    /// @returns {struct.real4} The resulting vector.
    static sqrt_ = function () { // GML name conflict.
        return new real4(
            sqrt(x),
            sqrt(y),
            sqrt(z),
            sqrt(w)
        );
    }
    
    /// Sets this `real4` to the per-component square root.
    /// @returns {undefined}
    static self_sqrt = function () {
        x = sqrt(x);
        y = sqrt(y);
        z = sqrt(z);
        w = sqrt(w);
    }
    
    /// Computes the component-wise step function.
    /// For each component: returns 0.0 if `self < edge`, else returns 1.0.
    /// @param {struct.real4} _edge The secondary vector for this math operation.
    /// @returns {struct.real4} The resulting vector.
    static step = function (_edge) {
        return new real4(
            x < _edge.x ? 0 : 1,
            y < _edge.y ? 0 : 1,
            z < _edge.z ? 0 : 1,
            w < _edge.w ? 0 : 1
        );
    }
    
    /// Sets this `real4` to the component-wise step function.
    /// For each component: returns 0.0 if `self < edge`, else returns 1.0.
    /// @param {struct.real4} _edge The secondary vector for this math operation.
    /// @returns {undefined}
    static self_step = function (_edge) {
        x = x < _edge.x ? 0 : 1;
        y = y < _edge.y ? 0 : 1;
        z = z < _edge.z ? 0 : 1;
        w = w < _edge.w ? 0 : 1;
    }
    
    /// Computes the per-component tangent numbers (in radians).
    /// @returns {struct.real4} The resulting vector.
    static tan_ = function () { // GML name conflict.
        return new real4(
            tan(x),
            tan(y),
            tan(z),
            tan(w)
        );
    }
    
    /// Sets this `real4` to the per-component tangent numbers (in radians).
    /// @returns {undefined}
    static self_tan = function () {
        x = tan(x);
        y = tan(y);
        z = tan(z);
        w = tan(w);
    }
    
    /// Computes the per-component hyperbolic tangent numbers.
    /// @returns {struct.real4} The resulting vector.
    static tanh_ = function () { // GML name conflict.
        // Feather ignore GM2023
        return new real4(
            tanh(x),
            tanh(y),
            tanh(z),
            tanh(w)
        );
    }
    
    /// Sets this `real4` to the per-component hyperbolic tangent numbers.
    /// @returns {undefined}
    static self_tanh = function () {
        x = tanh(x);
        y = tanh(y);
        z = tanh(z);
        w = tanh(w);
    }
    
    /// Implements `string(self)` (called during struct to string conversions).
    /// @returns {string}
    static toString = function () {
        return "{ x : " + string(x) + ", y : " + string(y) + ", z : " + string(z) + ", w : " + string(w) + " }";
    }
    
    /// Computes the per-component truncated integer portion.
    /// @returns {struct.real4} The resulting vector.
    static trunc_ = function () { // GML name conflict.
        // Feather ignore GM2023
        return new real4(
            trunc(x),
            trunc(y),
            trunc(z),
            trunc(w)
        );
    }
    
    /// Sets this `real4` to the per-component truncated integer portion.
    /// @returns {undefined}
    static self_trunc = function () {
        x = trunc(x);
        y = trunc(y);
        z = trunc(z);
        w = trunc(w);
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
    
    /// Computes a swizzled vector using the constructor `new real2(self.x, self.w)`.
    /// @returns {struct.real2} The resulting vector.
    static xw = function () {
        return new real2(
            x,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real2(self.y, self.w)`.
    /// @returns {struct.real2} The resulting vector.
    static yw = function () {
        return new real2(
            y,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real2(self.z, self.w)`.
    /// @returns {struct.real2} The resulting vector.
    static zw = function () {
        return new real2(
            z,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real2(self.w, self.x)`.
    /// @returns {struct.real2} The resulting vector.
    static wx = function () {
        return new real2(
            w,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real2(self.w, self.y)`.
    /// @returns {struct.real2} The resulting vector.
    static wy = function () {
        return new real2(
            w,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real2(self.w, self.z)`.
    /// @returns {struct.real2} The resulting vector.
    static wz = function () {
        return new real2(
            w,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real2(self.w, self.w)`.
    /// @returns {struct.real2} The resulting vector.
    static ww = function () {
        return new real2(
            w,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real3(self.x, self.x, self.w)`.
    /// @returns {struct.real3} The resulting vector.
    static xxw = function () {
        return new real3(
            x,
            x,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real3(self.x, self.y, self.w)`.
    /// @returns {struct.real3} The resulting vector.
    static xyw = function () {
        return new real3(
            x,
            y,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real3(self.x, self.z, self.w)`.
    /// @returns {struct.real3} The resulting vector.
    static xzw = function () {
        return new real3(
            x,
            z,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.x, self.w, self.x)`.
    /// @returns {struct.real3} The resulting vector.
    static xwx = function () {
        return new real3(
            x,
            w,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.x, self.w, self.y)`.
    /// @returns {struct.real3} The resulting vector.
    static xwy = function () {
        return new real3(
            x,
            w,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.x, self.w, self.z)`.
    /// @returns {struct.real3} The resulting vector.
    static xwz = function () {
        return new real3(
            x,
            w,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.x, self.w, self.w)`.
    /// @returns {struct.real3} The resulting vector.
    static xww = function () {
        return new real3(
            x,
            w,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real3(self.y, self.x, self.w)`.
    /// @returns {struct.real3} The resulting vector.
    static yxw = function () {
        return new real3(
            y,
            x,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real3(self.y, self.y, self.w)`.
    /// @returns {struct.real3} The resulting vector.
    static yyw = function () {
        return new real3(
            y,
            y,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real3(self.y, self.z, self.w)`.
    /// @returns {struct.real3} The resulting vector.
    static yzw = function () {
        return new real3(
            y,
            z,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.y, self.w, self.x)`.
    /// @returns {struct.real3} The resulting vector.
    static ywx = function () {
        return new real3(
            y,
            w,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.y, self.w, self.y)`.
    /// @returns {struct.real3} The resulting vector.
    static ywy = function () {
        return new real3(
            y,
            w,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.y, self.w, self.z)`.
    /// @returns {struct.real3} The resulting vector.
    static ywz = function () {
        return new real3(
            y,
            w,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.y, self.w, self.w)`.
    /// @returns {struct.real3} The resulting vector.
    static yww = function () {
        return new real3(
            y,
            w,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real3(self.z, self.x, self.w)`.
    /// @returns {struct.real3} The resulting vector.
    static zxw = function () {
        return new real3(
            z,
            x,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real3(self.z, self.y, self.w)`.
    /// @returns {struct.real3} The resulting vector.
    static zyw = function () {
        return new real3(
            z,
            y,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real3(self.z, self.z, self.w)`.
    /// @returns {struct.real3} The resulting vector.
    static zzw = function () {
        return new real3(
            z,
            z,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.z, self.w, self.x)`.
    /// @returns {struct.real3} The resulting vector.
    static zwx = function () {
        return new real3(
            z,
            w,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.z, self.w, self.y)`.
    /// @returns {struct.real3} The resulting vector.
    static zwy = function () {
        return new real3(
            z,
            w,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.z, self.w, self.z)`.
    /// @returns {struct.real3} The resulting vector.
    static zwz = function () {
        return new real3(
            z,
            w,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.z, self.w, self.w)`.
    /// @returns {struct.real3} The resulting vector.
    static zww = function () {
        return new real3(
            z,
            w,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.w, self.x, self.x)`.
    /// @returns {struct.real3} The resulting vector.
    static wxx = function () {
        return new real3(
            w,
            x,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.w, self.x, self.y)`.
    /// @returns {struct.real3} The resulting vector.
    static wxy = function () {
        return new real3(
            w,
            x,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.w, self.x, self.z)`.
    /// @returns {struct.real3} The resulting vector.
    static wxz = function () {
        return new real3(
            w,
            x,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.w, self.x, self.w)`.
    /// @returns {struct.real3} The resulting vector.
    static wxw = function () {
        return new real3(
            w,
            x,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.w, self.y, self.x)`.
    /// @returns {struct.real3} The resulting vector.
    static wyx = function () {
        return new real3(
            w,
            y,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.w, self.y, self.y)`.
    /// @returns {struct.real3} The resulting vector.
    static wyy = function () {
        return new real3(
            w,
            y,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.w, self.y, self.z)`.
    /// @returns {struct.real3} The resulting vector.
    static wyz = function () {
        return new real3(
            w,
            y,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.w, self.y, self.w)`.
    /// @returns {struct.real3} The resulting vector.
    static wyw = function () {
        return new real3(
            w,
            y,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.w, self.z, self.x)`.
    /// @returns {struct.real3} The resulting vector.
    static wzx = function () {
        return new real3(
            w,
            z,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.w, self.z, self.y)`.
    /// @returns {struct.real3} The resulting vector.
    static wzy = function () {
        return new real3(
            w,
            z,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.w, self.z, self.z)`.
    /// @returns {struct.real3} The resulting vector.
    static wzz = function () {
        return new real3(
            w,
            z,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.w, self.z, self.w)`.
    /// @returns {struct.real3} The resulting vector.
    static wzw = function () {
        return new real3(
            w,
            z,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.w, self.w, self.x)`.
    /// @returns {struct.real3} The resulting vector.
    static wwx = function () {
        return new real3(
            w,
            w,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.w, self.w, self.y)`.
    /// @returns {struct.real3} The resulting vector.
    static wwy = function () {
        return new real3(
            w,
            w,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.w, self.w, self.z)`.
    /// @returns {struct.real3} The resulting vector.
    static wwz = function () {
        return new real3(
            w,
            w,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real3(self.w, self.w, self.w)`.
    /// @returns {struct.real3} The resulting vector.
    static www = function () {
        return new real3(
            w,
            w,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.x, self.x, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static xxxw = function () {
        return new real4(
            x,
            x,
            x,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.x, self.y, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static xxyw = function () {
        return new real4(
            x,
            x,
            y,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.x, self.z, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static xxzw = function () {
        return new real4(
            x,
            x,
            z,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.x, self.w, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static xxwx = function () {
        return new real4(
            x,
            x,
            w,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.x, self.w, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static xxwy = function () {
        return new real4(
            x,
            x,
            w,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.x, self.w, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static xxwz = function () {
        return new real4(
            x,
            x,
            w,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.x, self.w, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static xxww = function () {
        return new real4(
            x,
            x,
            w,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.y, self.x, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static xyxw = function () {
        return new real4(
            x,
            y,
            x,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.y, self.y, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static xyyw = function () {
        return new real4(
            x,
            y,
            y,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.y, self.z, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static xyzw = function () {
        return new real4(
            x,
            y,
            z,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.y, self.w, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static xywx = function () {
        return new real4(
            x,
            y,
            w,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.y, self.w, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static xywy = function () {
        return new real4(
            x,
            y,
            w,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.y, self.w, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static xywz = function () {
        return new real4(
            x,
            y,
            w,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.y, self.w, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static xyww = function () {
        return new real4(
            x,
            y,
            w,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.z, self.x, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static xzxw = function () {
        return new real4(
            x,
            z,
            x,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.z, self.y, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static xzyw = function () {
        return new real4(
            x,
            z,
            y,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.z, self.z, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static xzzw = function () {
        return new real4(
            x,
            z,
            z,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.z, self.w, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static xzwx = function () {
        return new real4(
            x,
            z,
            w,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.z, self.w, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static xzwy = function () {
        return new real4(
            x,
            z,
            w,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.z, self.w, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static xzwz = function () {
        return new real4(
            x,
            z,
            w,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.z, self.w, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static xzww = function () {
        return new real4(
            x,
            z,
            w,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.w, self.x, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static xwxx = function () {
        return new real4(
            x,
            w,
            x,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.w, self.x, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static xwxy = function () {
        return new real4(
            x,
            w,
            x,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.w, self.x, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static xwxz = function () {
        return new real4(
            x,
            w,
            x,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.w, self.x, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static xwxw = function () {
        return new real4(
            x,
            w,
            x,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.w, self.y, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static xwyx = function () {
        return new real4(
            x,
            w,
            y,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.w, self.y, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static xwyy = function () {
        return new real4(
            x,
            w,
            y,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.w, self.y, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static xwyz = function () {
        return new real4(
            x,
            w,
            y,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.w, self.y, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static xwyw = function () {
        return new real4(
            x,
            w,
            y,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.w, self.z, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static xwzx = function () {
        return new real4(
            x,
            w,
            z,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.w, self.z, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static xwzy = function () {
        return new real4(
            x,
            w,
            z,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.w, self.z, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static xwzz = function () {
        return new real4(
            x,
            w,
            z,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.w, self.z, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static xwzw = function () {
        return new real4(
            x,
            w,
            z,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.w, self.w, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static xwwx = function () {
        return new real4(
            x,
            w,
            w,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.w, self.w, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static xwwy = function () {
        return new real4(
            x,
            w,
            w,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.w, self.w, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static xwwz = function () {
        return new real4(
            x,
            w,
            w,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.x, self.w, self.w, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static xwww = function () {
        return new real4(
            x,
            w,
            w,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.x, self.x, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static yxxw = function () {
        return new real4(
            y,
            x,
            x,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.x, self.y, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static yxyw = function () {
        return new real4(
            y,
            x,
            y,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.x, self.z, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static yxzw = function () {
        return new real4(
            y,
            x,
            z,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.x, self.w, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static yxwx = function () {
        return new real4(
            y,
            x,
            w,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.x, self.w, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static yxwy = function () {
        return new real4(
            y,
            x,
            w,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.x, self.w, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static yxwz = function () {
        return new real4(
            y,
            x,
            w,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.x, self.w, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static yxww = function () {
        return new real4(
            y,
            x,
            w,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.y, self.x, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static yyxw = function () {
        return new real4(
            y,
            y,
            x,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.y, self.y, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static yyyw = function () {
        return new real4(
            y,
            y,
            y,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.y, self.z, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static yyzw = function () {
        return new real4(
            y,
            y,
            z,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.y, self.w, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static yywx = function () {
        return new real4(
            y,
            y,
            w,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.y, self.w, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static yywy = function () {
        return new real4(
            y,
            y,
            w,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.y, self.w, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static yywz = function () {
        return new real4(
            y,
            y,
            w,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.y, self.w, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static yyww = function () {
        return new real4(
            y,
            y,
            w,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.z, self.x, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static yzxw = function () {
        return new real4(
            y,
            z,
            x,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.z, self.y, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static yzyw = function () {
        return new real4(
            y,
            z,
            y,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.z, self.z, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static yzzw = function () {
        return new real4(
            y,
            z,
            z,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.z, self.w, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static yzwx = function () {
        return new real4(
            y,
            z,
            w,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.z, self.w, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static yzwy = function () {
        return new real4(
            y,
            z,
            w,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.z, self.w, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static yzwz = function () {
        return new real4(
            y,
            z,
            w,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.z, self.w, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static yzww = function () {
        return new real4(
            y,
            z,
            w,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.w, self.x, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static ywxx = function () {
        return new real4(
            y,
            w,
            x,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.w, self.x, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static ywxy = function () {
        return new real4(
            y,
            w,
            x,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.w, self.x, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static ywxz = function () {
        return new real4(
            y,
            w,
            x,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.w, self.x, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static ywxw = function () {
        return new real4(
            y,
            w,
            x,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.w, self.y, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static ywyx = function () {
        return new real4(
            y,
            w,
            y,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.w, self.y, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static ywyy = function () {
        return new real4(
            y,
            w,
            y,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.w, self.y, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static ywyz = function () {
        return new real4(
            y,
            w,
            y,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.w, self.y, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static ywyw = function () {
        return new real4(
            y,
            w,
            y,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.w, self.z, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static ywzx = function () {
        return new real4(
            y,
            w,
            z,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.w, self.z, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static ywzy = function () {
        return new real4(
            y,
            w,
            z,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.w, self.z, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static ywzz = function () {
        return new real4(
            y,
            w,
            z,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.w, self.z, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static ywzw = function () {
        return new real4(
            y,
            w,
            z,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.w, self.w, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static ywwx = function () {
        return new real4(
            y,
            w,
            w,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.w, self.w, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static ywwy = function () {
        return new real4(
            y,
            w,
            w,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.w, self.w, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static ywwz = function () {
        return new real4(
            y,
            w,
            w,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.y, self.w, self.w, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static ywww = function () {
        return new real4(
            y,
            w,
            w,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.x, self.x, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static zxxw = function () {
        return new real4(
            z,
            x,
            x,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.x, self.y, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static zxyw = function () {
        return new real4(
            z,
            x,
            y,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.x, self.z, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static zxzw = function () {
        return new real4(
            z,
            x,
            z,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.x, self.w, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static zxwx = function () {
        return new real4(
            z,
            x,
            w,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.x, self.w, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static zxwy = function () {
        return new real4(
            z,
            x,
            w,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.x, self.w, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static zxwz = function () {
        return new real4(
            z,
            x,
            w,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.x, self.w, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static zxww = function () {
        return new real4(
            z,
            x,
            w,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.y, self.x, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static zyxw = function () {
        return new real4(
            z,
            y,
            x,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.y, self.y, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static zyyw = function () {
        return new real4(
            z,
            y,
            y,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.y, self.z, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static zyzw = function () {
        return new real4(
            z,
            y,
            z,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.y, self.w, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static zywx = function () {
        return new real4(
            z,
            y,
            w,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.y, self.w, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static zywy = function () {
        return new real4(
            z,
            y,
            w,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.y, self.w, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static zywz = function () {
        return new real4(
            z,
            y,
            w,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.y, self.w, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static zyww = function () {
        return new real4(
            z,
            y,
            w,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.z, self.x, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static zzxw = function () {
        return new real4(
            z,
            z,
            x,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.z, self.y, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static zzyw = function () {
        return new real4(
            z,
            z,
            y,
            w
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
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.z, self.z, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static zzzw = function () {
        return new real4(
            z,
            z,
            z,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.z, self.w, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static zzwx = function () {
        return new real4(
            z,
            z,
            w,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.z, self.w, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static zzwy = function () {
        return new real4(
            z,
            z,
            w,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.z, self.w, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static zzwz = function () {
        return new real4(
            z,
            z,
            w,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.z, self.w, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static zzww = function () {
        return new real4(
            z,
            z,
            w,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.w, self.x, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static zwxx = function () {
        return new real4(
            z,
            w,
            x,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.w, self.x, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static zwxy = function () {
        return new real4(
            z,
            w,
            x,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.w, self.x, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static zwxz = function () {
        return new real4(
            z,
            w,
            x,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.w, self.x, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static zwxw = function () {
        return new real4(
            z,
            w,
            x,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.w, self.y, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static zwyx = function () {
        return new real4(
            z,
            w,
            y,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.w, self.y, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static zwyy = function () {
        return new real4(
            z,
            w,
            y,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.w, self.y, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static zwyz = function () {
        return new real4(
            z,
            w,
            y,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.w, self.y, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static zwyw = function () {
        return new real4(
            z,
            w,
            y,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.w, self.z, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static zwzx = function () {
        return new real4(
            z,
            w,
            z,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.w, self.z, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static zwzy = function () {
        return new real4(
            z,
            w,
            z,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.w, self.z, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static zwzz = function () {
        return new real4(
            z,
            w,
            z,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.w, self.z, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static zwzw = function () {
        return new real4(
            z,
            w,
            z,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.w, self.w, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static zwwx = function () {
        return new real4(
            z,
            w,
            w,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.w, self.w, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static zwwy = function () {
        return new real4(
            z,
            w,
            w,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.w, self.w, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static zwwz = function () {
        return new real4(
            z,
            w,
            w,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.z, self.w, self.w, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static zwww = function () {
        return new real4(
            z,
            w,
            w,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.x, self.x, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static wxxx = function () {
        return new real4(
            w,
            x,
            x,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.x, self.x, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static wxxy = function () {
        return new real4(
            w,
            x,
            x,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.x, self.x, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static wxxz = function () {
        return new real4(
            w,
            x,
            x,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.x, self.x, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static wxxw = function () {
        return new real4(
            w,
            x,
            x,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.x, self.y, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static wxyx = function () {
        return new real4(
            w,
            x,
            y,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.x, self.y, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static wxyy = function () {
        return new real4(
            w,
            x,
            y,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.x, self.y, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static wxyz = function () {
        return new real4(
            w,
            x,
            y,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.x, self.y, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static wxyw = function () {
        return new real4(
            w,
            x,
            y,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.x, self.z, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static wxzx = function () {
        return new real4(
            w,
            x,
            z,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.x, self.z, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static wxzy = function () {
        return new real4(
            w,
            x,
            z,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.x, self.z, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static wxzz = function () {
        return new real4(
            w,
            x,
            z,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.x, self.z, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static wxzw = function () {
        return new real4(
            w,
            x,
            z,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.x, self.w, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static wxwx = function () {
        return new real4(
            w,
            x,
            w,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.x, self.w, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static wxwy = function () {
        return new real4(
            w,
            x,
            w,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.x, self.w, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static wxwz = function () {
        return new real4(
            w,
            x,
            w,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.x, self.w, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static wxww = function () {
        return new real4(
            w,
            x,
            w,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.y, self.x, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static wyxx = function () {
        return new real4(
            w,
            y,
            x,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.y, self.x, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static wyxy = function () {
        return new real4(
            w,
            y,
            x,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.y, self.x, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static wyxz = function () {
        return new real4(
            w,
            y,
            x,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.y, self.x, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static wyxw = function () {
        return new real4(
            w,
            y,
            x,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.y, self.y, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static wyyx = function () {
        return new real4(
            w,
            y,
            y,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.y, self.y, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static wyyy = function () {
        return new real4(
            w,
            y,
            y,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.y, self.y, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static wyyz = function () {
        return new real4(
            w,
            y,
            y,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.y, self.y, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static wyyw = function () {
        return new real4(
            w,
            y,
            y,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.y, self.z, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static wyzx = function () {
        return new real4(
            w,
            y,
            z,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.y, self.z, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static wyzy = function () {
        return new real4(
            w,
            y,
            z,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.y, self.z, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static wyzz = function () {
        return new real4(
            w,
            y,
            z,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.y, self.z, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static wyzw = function () {
        return new real4(
            w,
            y,
            z,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.y, self.w, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static wywx = function () {
        return new real4(
            w,
            y,
            w,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.y, self.w, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static wywy = function () {
        return new real4(
            w,
            y,
            w,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.y, self.w, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static wywz = function () {
        return new real4(
            w,
            y,
            w,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.y, self.w, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static wyww = function () {
        return new real4(
            w,
            y,
            w,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.z, self.x, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static wzxx = function () {
        return new real4(
            w,
            z,
            x,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.z, self.x, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static wzxy = function () {
        return new real4(
            w,
            z,
            x,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.z, self.x, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static wzxz = function () {
        return new real4(
            w,
            z,
            x,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.z, self.x, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static wzxw = function () {
        return new real4(
            w,
            z,
            x,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.z, self.y, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static wzyx = function () {
        return new real4(
            w,
            z,
            y,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.z, self.y, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static wzyy = function () {
        return new real4(
            w,
            z,
            y,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.z, self.y, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static wzyz = function () {
        return new real4(
            w,
            z,
            y,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.z, self.y, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static wzyw = function () {
        return new real4(
            w,
            z,
            y,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.z, self.z, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static wzzx = function () {
        return new real4(
            w,
            z,
            z,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.z, self.z, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static wzzy = function () {
        return new real4(
            w,
            z,
            z,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.z, self.z, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static wzzz = function () {
        return new real4(
            w,
            z,
            z,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.z, self.z, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static wzzw = function () {
        return new real4(
            w,
            z,
            z,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.z, self.w, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static wzwx = function () {
        return new real4(
            w,
            z,
            w,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.z, self.w, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static wzwy = function () {
        return new real4(
            w,
            z,
            w,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.z, self.w, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static wzwz = function () {
        return new real4(
            w,
            z,
            w,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.z, self.w, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static wzww = function () {
        return new real4(
            w,
            z,
            w,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.w, self.x, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static wwxx = function () {
        return new real4(
            w,
            w,
            x,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.w, self.x, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static wwxy = function () {
        return new real4(
            w,
            w,
            x,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.w, self.x, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static wwxz = function () {
        return new real4(
            w,
            w,
            x,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.w, self.x, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static wwxw = function () {
        return new real4(
            w,
            w,
            x,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.w, self.y, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static wwyx = function () {
        return new real4(
            w,
            w,
            y,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.w, self.y, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static wwyy = function () {
        return new real4(
            w,
            w,
            y,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.w, self.y, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static wwyz = function () {
        return new real4(
            w,
            w,
            y,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.w, self.y, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static wwyw = function () {
        return new real4(
            w,
            w,
            y,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.w, self.z, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static wwzx = function () {
        return new real4(
            w,
            w,
            z,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.w, self.z, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static wwzy = function () {
        return new real4(
            w,
            w,
            z,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.w, self.z, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static wwzz = function () {
        return new real4(
            w,
            w,
            z,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.w, self.z, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static wwzw = function () {
        return new real4(
            w,
            w,
            z,
            w
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.w, self.w, self.x)`.
    /// @returns {struct.real4} The resulting vector.
    static wwwx = function () {
        return new real4(
            w,
            w,
            w,
            x
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.w, self.w, self.y)`.
    /// @returns {struct.real4} The resulting vector.
    static wwwy = function () {
        return new real4(
            w,
            w,
            w,
            y
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.w, self.w, self.z)`.
    /// @returns {struct.real4} The resulting vector.
    static wwwz = function () {
        return new real4(
            w,
            w,
            w,
            z
        );
    }
    
    /// Computes a swizzled vector using the constructor `new real4(self.w, self.w, self.w, self.w)`.
    /// @returns {struct.real4} The resulting vector.
    static wwww = function () {
        return new real4(
            w,
            w,
            w,
            w
        );
    }
}