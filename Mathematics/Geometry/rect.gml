/// Creates a 2D rectangle containing a position and size.
/// @param {real} _x The x-position of the rect.
/// @param {real} _y The y-position of the rect.
/// @param {real} _width The width of the rect.
/// @param {real} _height The height of the rect.
function rect(_x = 0, _y = 0, _width = 0, _height = 0) constructor {
    x = _x;
    y = _y;
    width = _width;
    height = _height;
    
    /// Returns a cloned copy of this `rect`.
    /// @returns {struct.rect}
    static clone = function () {
        return new rect(x, y, width, height);
    }
    
    /// Gets the x-position of the `rect` (same as property `x`).
    /// @returns {real}
    static get_x = function () {
        return x;
    }
    
    /// Sets the x-position of the `rect` (same as property `x`).
    /// @param {real} _value The new value.
    static set_x = function (_value) {
        x = _value;
    }
    
    /// Gets the y-position of the `rect` (same as property `y`).
    /// @returns {real}
    static get_y = function () {
        return y;
    }
    
    /// Sets the y-position of the `rect` (same as property `y`).
    /// @param {real} _value The new value.
    static set_y = function (_value) {
        y = _value;
    }
    
    /// Gets the position of the `rect`.
    /// @returns {struct.real2}
    static get_position = function () {
        return new real2(x, y);
    }
    
    /// Sets the position of the `rect`.
    /// @param {struct.real2} _position The position of the `rect`.
    static set_position = function (_position) {
        x = _position.x;
        y = _position.y;
    }
    
    /// Gets the center position of the `rect`.
    /// @returns {Struct.real2}
    static get_center = function () {
        return new real2(x + width / 2, y + height / 2);
    }
    
    /// Sets the center position of the `rect`.
    /// @param {struct.real2} _center The center position of the `rect`.
    static set_center = function (_center) {
        x = _center.x - width / 2;
        y = _center.y - height / 2;
    }
    
    /// Gets the minimum position of the `rect`.
    /// @returns {struct.real2}
    static get_min = function () {
        return new real2(x, y);
    }
    
    /// Sets the minimum position of the `rect`.
    /// @param {struct.real2} _value The new position vector.
    static set_min = function (_value) {
        set_x_min(_value.x);
        set_y_min(_value.y);
    }

    /// Gets the maximum position of the `rect`.
    /// @returns {struct.real2}
    static get_max = function () {
        var x_max = get_x_max();
        var y_max = get_y_max();
        return new real2(x_max, y_max);
    }
    
    /// Sets the maximum position of the `rect`.
    /// @param {struct.real2} _value The new position vector.
    static set_max = function (_value) {
        set_x_max(_value.x);
        set_y_max(_value.y);
    }

    /// Gets the width of the `rect` (same as property `width`).
    /// @returns {real}
    static get_width = function () {
        return width;
    }
    
    /// Sets the width of the `rect` (same as property `width`).
    /// @param {real} _value The new value.
    static set_width = function (_value) {
        width = _value;
    }
    
    /// Gets the height of the `rect` (same as property `height`).
    /// @returns {real}
    static get_height = function () {
        return height;
    }
    
    /// Sets the height of the `rect` (same as property `height`).
    /// @param {real} _value The new value.
    static set_height = function (_value) {
        height = _value;
    }

    /// Gets the size of the `rect`.
    /// @returns {struct.real2}
    static get_size = function () {
        return new real2(width, height);
    }
    
    /// Sets the size of the `rect`.
    /// @param {struct.real2} _value The new size vector.
    static set_size = function (_value) {
        width = _value.x;
        height = _value.y;
    }

    /// Gets the minimum x-position of the `rect` (same as property `x`).
    /// @returns {real}
    static get_x_min = function () {
        return x;
    }
    
    /// Sets the minimum x-position of the `rect`.
    /// @param {real} _value The new value.
    static set_x_min = function (_value) {
        var oldxmax = get_x_max();
        x = _value;
        width = oldxmax - x;
    }
    
    /// Gets the minimum y-position of the `rect` (same as property `y`).
    /// @returns {real}
    static get_y_min = function () {
        return y;
    }
    
    /// Sets the minimum y-position of the `rect`.
    /// @param {real} _value The new value.
    static set_y_min = function (_value) {
        var oldymax = get_y_max();
        y = _value;
        height = oldymax - y;
    }
    
    /// Gets the maximum x-position of the `rect`.
    /// @returns {real}
    static get_x_max = function () {
        return width + x;
    }
    
    /// Sets the maximum x-position of the `rect`.
    /// @param {real} _value The new value.
    static set_x_max = function (_value) {
        width = _value - x;
    }
    
    /// Gets the maximum y-position of the `rect`.
    /// @returns {real}
    static get_y_max = function () {
        return height + y;
    }
    
    /// Sets the maximum y-position of the `rect`.
    /// @param {real} _value The new value.
    static set_y_max = function (_value) {
        height = _value - y;
    }
    
    /// Checks whether the given point is inside the `rect`.
    /// @param {struct.real2} _point The point vector to be compared.
    /// @returns {bool} True when the point is inside of the `rect` else false.
    static contains = function (_point) {
        return (_point.x >= x) && (_point.x < get_x_max()) && (_point.y >= y) && (_point.y < get_y_max());
    }
    
    /// Checks whether the given `rect` overlaps with this `rect`.
    /// @param {struct.rect} _rect The rectangle to be compared.
    /// @returns {bool} True when the rectangle overlaps with this `rect` else false.
    static overlaps = function (_rect) {
        return (_rect.get_x_max() > x && _rect.x < get_x_max() && _rect.get_y_max() > y && _rect.y < get_y_max());
    }
}

/// Creates a new `rect` from bounds (such as `bbox_*` variables).
/// @param {real} _left The left position of the bounds.
/// @param {real} _top The top position of the bounds.
/// @param {real} _right The right position of the bounds.
/// @param {real} _bottom The bottom position of the bounds.
/// @returns {struct.rect}
function new_rect_from_bounds(_left, _top, _right, _bottom) {
    return new rect(_left, _top, _right - _left, _bottom - _top);
}