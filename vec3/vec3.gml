// represents a 3-dimensional vector.
function vec3(_x, _y, _z)
{
	x = _x;
	y = _y;
	z = _z;
	
	// sets this vector to the specified coordinates.
	function set(_x, _y, _z)
	{
		x = _x;
		y = _y;
		z = _z;
		return self; // chaining.
	}
	
	// returns a copy of this vector.
	function copy()
	{
		return new vec3(x, y, z);
	}
	
	// adds another vector to this vector.
	function add(v)
	{
		x += v.x;
		y += v.y;
		z += v.z;
		return self; // chaining.
	}
	
	// subtracts another vector from this vector.
	function sub(v)
	{
		x -= v.x;
		y -= v.y;
		z -= v.z;
		return self; // chaining.
	}
	
	// multiplies this vector by another vector.
	function mul(v)
	{
		x *= v.x;
		y *= v.y;
		z *= v.z;
		return self; // chaining.
	}
	
	// divides this vector by another vector.
	function divide(v)
	{
		x /= v.x;
		y /= v.y;
		z /= v.z;
		return self; // chaining.
	}
	
	// returns the length of this vector.
	function magnitude()
	{
		return sqrt(x * x + y * y + z * z);
	}
	
	// returns the squared length of this vector.
	function sqr_magnitude()
	{
		return x * x + y * y + z * z;
	}
	
	// makes this vector have a magnitude of 1.
	function normalize()
	{
		var m = magnitude();
		if (m > math_get_epsilon())
		{
			x /= m;
			y /= m;
			z /= m;
		}
		else
		{
			x = 0;
			y = 0;
			z = 0;
		}
		return self; // chaining.
	}
	
	// returns a new vector with a magnitude of 1.
	function normalized()
	{
		return new vec3(x, y, z).normalize();
	}
	
	// returns whether this vector equals another vector.
	function equals(v)
	{
		if (x == v.x && y == v.y)
			return (z == v.z);
		return false;
	}
	
	// returns a string representation of this vector.
	function tostring()
	{
		return "(x:" + string(x) + ", y:" + string(y) + ", z:" + string(z) + ")";
	}
}

// returns a new vector with vector a + b.
function vec3_add(a, b)
{
	return new vec3(a.x + b.x, a.y + b.y, a.z + b.z);
}

// returns a new vector with vector a - b.
function vec3_sub(a, b)
{
	return new vec3(a.x - b.x, a.y - b.y, a.z - b.z);
}

// returns a new vector with vector a * b.
function vec3_mul(a, b)
{
	return new vec3(a.x * b.x, a.y * b.y, a.z * b.z);
}

// returns a new vector with vector a / b.
function vec3_divide(a, b)
{
	return new vec3(a.x / b.x, a.y / b.y, a.z / b.z);
}

// linearly interpolates between vector a and b by t.
function vec3_lerp(a, b, t)
{
	return new vec3(a.x + (b.x - a.x) * t, a.y + (b.y - a.y) * t, a.z + (b.z - a.z) * t);
}

// returns the cross product of two vectors.
function vec3_cross(lhs, rhs)
{
	return new vec3(lhs.y * rhs.z - lhs.z * rhs.y, lhs.z * rhs.x - lhs.x * rhs.z, lhs.x * rhs.y - lhs.y * rhs.x);
}

// computes the dot product of two vectors.
function vec3_dot(lhs, rhs)
{
	return lhs.x * rhs.x + lhs.y * rhs.y + lhs.z * rhs.z;
}

// reflects a vector off the plane defined by a normal.
function vec3_reflect(direction, normal)
{
	return vec3(-2.0, -2.0, -2.0).mul(vec3_dot(normal, direction)).mul(normal).add(direction);
}

// returns the angle in degrees between from and to.
function vec3_angle(from, to)
{
	return arccos(clamp(vec3_dot(from.normalized(), to.normalized()), -1.0, 1.0)) * 57.29578;
}

// returns the distance between a and b.
function vec3_distance(a, b)
{
	return new vec3(a.x, a.y, a.z).sub(b).magnitude();
}

// returns a vector that is made from the smallest components of two vectors.
function vec3_min(a, b)
{
	return new vec3(min(a.x, b.x), min(a.y, b.y), min(a.z, b.z));
}

// returns a vector that is made from the largest components of two vectors.
function vec3_max(a, b)
{
	return new vec3(max(a.x, b.x), max(a.y, b.y), max(a.z, b.z));
}