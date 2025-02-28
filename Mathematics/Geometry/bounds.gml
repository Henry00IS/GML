/// Creates a 3D axis aligned bounding box (AABB).
/// @param {struct.real3} _center The center position of the bounds.
/// @param {struct.real3} _size The size of the bounds.
function bounds(_center, _size) constructor {
    center = _center.clone();
    extents = _size.mul_real(0.5);
    
    /// Returns a cloned copy of this `bounds`.
    /// @returns {struct.bounds}
    static clone = function () {
        return new bounds(center, extents.mul_real(2));
    }
    
    /// Gets the size of the `bounds`.
    /// This is always twice as large as the `extents`.
    /// @returns {struct.real3}
    static get_size = function () {
        return extents.mul_real(2);
    }
    
    /// Gets the minimal point of the `bounds`.
    /// This is always equal to `center`-`extents`.
    /// @returns {struct.real3}
    static get_min = function () {
        return center.sub(extents);
    }

    /// Gets the maximal point of the `bounds`.
    /// This is always equal to `center`+`extents`.
    /// @returns {struct.real3}
    static get_max = function () {
        return center.add(extents);
    }
    
    /// Grows this `bounds` to include the given point.
    /// @param {struct.real3} _point The point to be included.
    /// @returns {undefined}
    static self_encapsulate = function (_point) {
        // Feather ignore GM2023
        var _min = get_min();
        var _max = get_max();
        set_min_max(_min.min_(_point), _max.max_(_point));
    }
    
    /// Grows this `bounds` to include the given `bounds`.
    /// @param {struct.bounds} _bounds The `bounds` to be included.
    /// @returns {undefined}
    static self_encapsulate_bounds = function (_bounds) {
        self_encapsulate(_bounds.get_min());
        self_encapsulate(_bounds.get_max());
    }
    
    /// Expands this `bounds` by increasing its size `amount` along each side.
    /// @param {struct.real3} _amount The amount to increase the `bounds` size by.
    /// @returns {undefined}
    static self_expand = function (_amount) {
        extents.self_add(_amount.mul_real(0.5));
    }
    
    /// Expands this `bounds` by increasing its size `amount` along each side.
    /// @param {real} _amount The amount to increase the `bounds` size by.
    /// @returns {undefined}
    static self_expand_real = function (_amount) {
        extents.self_add_real(_amount * 0.5);
    }
    
    /// Sets the minimal and maximal point of this `bounds`.
    /// @param {struct.real3} _min The minimal point of the `bounds`.
    /// @param {struct.real3} _max The maximal point of the `bounds`.
    static set_min_max = function (_min, _max) {
        extents = _max.sub(_min).mul_real(0.5);
        center = _min.add(extents);
    }
    
    /// Checks whether another bounding box intersect with this bounding box.
    /// @param {struct.bounds} _bounds The bounding box to check against.
    /// @return {bool} True when the bounding boxes intersect else false.
    static intersects = function (_bounds) {
        var _bounds_min = _bounds.get_min();
        var _bounds_max = _bounds.get_max();
        var _min = get_min();
        var _max = get_max();
        return _min.x <= _bounds_max.x && _max.x >= _bounds_min.x
            && _min.y <= _bounds_max.y && _max.y >= _bounds_min.y
            && _min.z <= _bounds_max.z && _max.z >= _bounds_min.z;
    }
    
    /// Checks whether the given point is inside this bounding box.
    /// @param {struct.real3} _point The point to check.
    /// @return {bool} True if the point is inside the bounding box, else false.
    static contains = function (_point) {
        var _min = get_min();
        var _max = get_max();
        return (_point.x >= _min.x && _point.x <= _max.x)
            && (_point.y >= _min.y && _point.y <= _max.y)
            && (_point.z >= _min.z && _point.z <= _max.z);
    };
}