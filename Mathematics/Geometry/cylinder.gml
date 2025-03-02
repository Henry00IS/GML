/// Creates a 3D axis aligned cylinder with the Z-Axis as height.
/// @param {struct.real3} _center The center position of the cylinder.
/// @param {real} _radius The radius of the cylinder.
/// @param {real} _height The height of the cylinder (Z-Axis).
function cylinder(_center, _radius, _height) constructor {
    center = _center.clone();
    radius = _radius;
    height = _height;
    
    /// Returns a cloned copy of this `cylinder`.
    /// @returns {struct.cylinder}
    static clone = function () {
        return new cylinder(center, radius, height);
    }
    
    /// Gets the size of the `cylinder`.
    /// This is always the height and diameter (not radius) of the cylinder.
    /// @returns {struct.real3}
    static get_size = function () {
        return new real3(radius * 2, radius * 2, height);
    }
    
    /// Gets the minimal bounding point of the `cylinder`.
    /// This is always equal to `center` - (xy: `radius`, z:`height`*0.5).
    /// @returns {struct.real3}
    static get_min = function () {
        return center.sub(new real3(radius, radius, height * 0.5));
    }

    /// Gets the maximal bounding point of the `cylinder`.
    /// This is always equal to `center` + (xy: `radius`, z:`height`*0.5).
    /// @returns {struct.real3}
    static get_max = function () {
        return center.add(new real3(radius, radius, height * 0.5));
    }
    
    /// Checks whether the given point is inside this `cylinder`.
    /// @param {struct.real3} _point The point to check.
    /// @return {bool} True if the point is inside the cylinder, else false.
    static contains = function (_point) {
        return abs(center.z - _point.z) <= height * 0.5
            && center.xy().distance(_point.xy()) <= radius;
    }
    
    /// Grows this `cylinder` to include the given point.
    /// @param {struct.real3} _point The point to be included.
    /// @returns {undefined}
    static encapsulate = function (_point) {
        var _half_height = height * 0.5;
        var _min_z = center.z - _half_height;
        var _max_z = center.z + _half_height;
        
        // expand the height if needed.
        if (_point.z < _min_z || _point.z > _max_z)
        {
            var _new_min_z = min(_min_z, _point.z);
            var _new_max_z = max(_max_z, _point.z);
            height = _new_max_z - _new_min_z;
            center.z = (_new_min_z + _new_max_z) * 0.5;
        }
        
        // expand the radius if needed.
        radius = max(radius, center.xy().distance(_point.xy()));
    }
    
    /// Grows this `cylinder` to include the given `cylinder`.
    /// @param {struct.cylinder} _cylinder The `cylinder` to be included.
    /// @returns {undefined}
    static encapsulate_cylinder = function (_cylinder) {
        // expand height.
        height = max(center.z + height * 0.5, _cylinder.center.z + _cylinder.height * 0.5)
               - min(center.z - height * 0.5, _cylinder.center.z - _cylinder.height * 0.5);
        center.z = (center.z + _cylinder.center.z) * 0.5;
        
        // expand radius.
        radius = max(radius, _cylinder.radius, center.xy().distance(_cylinder.center.xy()) + _cylinder.radius);
    }
    
    /// Checks whether another `cylinder` intersect with this `cylinder`.
    /// @param {struct.cylinder} _cylinder The `cylinder` to check against.
    /// @return {bool} True when the cylinders intersect else false.
    static intersects = function (_cylinder) {
        return abs(center.z - _cylinder.center.z) <= (height + _cylinder.height) * 0.5
            && center.xy().distance(_cylinder.center.xy()) <= (radius + _cylinder.radius);
    }
    
    /// Checks whether a `bounds` intersect with this cylinder.
    /// @param {struct.bounds} _bounds The bounds to check against.
    /// @return {bool} True when the geometries intersect else false.
    static intersects_bounds = function (_bounds) {
        // check z-axis (height) overlap.
        if (abs(center.z - _bounds.center.z) > (height + _bounds.size.z) * 0.5)
            return false;
        
        // find closest point in xy plane.
        var _closest_point = new real2(
            clamp(center.x, _bounds.get_min().x, _bounds.get_max().x),
            clamp(center.y, _bounds.get_min().y, _bounds.get_max().y)
        );
        
        // check if the closest point is inside the cylinder's radius.
        return center.xy().sub(_closest_point).length_squared() <= radius * radius;
    }
}