/// For a given normal direction, returns the closest cardinal direction
/// (north, east, south, west) as a unit `real2`. When the given normal is
/// zero, the result will also be `real2(0, 0)`.
/// @param {struct.real2} _normal The normal direction to be rounded.
function normal_to_cardinal(_normal) {
    if (abs(_normal.x) > abs(_normal.y)) {
        return new real2(sign(_normal.x), 0);
    } else {
        return new real2(0, sign(_normal.y));
    }
}