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
	}
	
	// adds a scalar value to this vector.
	function adds(s)
	{
		x += s;
		y += s;
		z += s;
	}
	
	// subtracts another vector from this vector.
	function sub(v)
	{
		x -= v.x;
		y -= v.y;
		z -= v.z;
	}
	
	// subtracts a scalar value from this vector.
	function subs(s)
	{
		x -= s;
		y -= s;
		z -= s;
	}
	
	// multiplies this vector by another vector.
	function mul(v)
	{
		x *= v.x;
		y *= v.y;
		z *= v.z;
	}
	
	// multiplies this vector by a scalar value.
	function muls(s)
	{
		x *= s;
		y *= s;
		z *= s;
	}
	
	// divides this vector by another vector.
	function divide(v)
	{
		x /= v.x;
		y /= v.y;
		z /= v.z;
	}
	
	// divides this vector by a scalar value.
	function divides(s)
	{
		x /= s;
		y /= s;
		z /= s;
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
	}
	
	// returns a new vector with a magnitude of 1.
	function normalized()
	{
		var v = new vec3(x, y, z);
		v.normalize();
		return v;
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

// returns a new vector with vector a + s.
function vec3_adds(a, s)
{
	return new vec3(a.x + s, a.y + s, a.z + s);
}

// returns a new vector with vector a - b.
function vec3_sub(a, b)
{
	return new vec3(a.x - b.x, a.y - b.y, a.z - b.z);
}

// returns a new vector with vector a - s.
function vec3_subs(a, s)
{
	return new vec3(a.x - s, a.y - s, a.z - s);
}

// returns a new vector with vector a * b.
function vec3_mul(a, b)
{
	return new vec3(a.x * b.x, a.y * b.y, a.z * b.z);
}

// returns a new vector with vector a * s.
function vec3_muls(a, s)
{
	return new vec3(a.x * s, a.y * s, a.z * s);
}

// returns a new vector with vector a / b.
function vec3_divide(a, b)
{
	return new vec3(a.x / b.x, a.y / b.y, a.z / b.z);
}

// returns a new vector with vector a / s.
function vec3_divides(a, s)
{
	return new vec3(a.x / s, a.y / s, a.z / s);
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
	var v = vec3(-2.0, -2.0, -2.0);
	v.muls(vec3_dot(normal, direction));
	v.mul(normal);
	v.add(direction);
	return v;
}

// returns the angle in degrees between from and to.
function vec3_angle(from, to)
{
	return arccos(clamp(vec3_dot(from.normalized(), to.normalized()), -1.0, 1.0)) * 57.29578;
}

// returns the distance between a and b.
function vec3_distance(a, b)
{
	var v = new vec3(a.x, a.y, a.z);
	v.sub(b);
	return v.magnitude();
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

// returns a vector where a vector is projected onto another vector.
function vec3_project(vector, normal)
{
	var n = vec3_dot(normal, normal);
	if (n < math_get_epsilon())
		return new vec3(0.0, 0.0, 0.0);
	var v = new vec3(normal.x, normal.y, normal.z);
	v.muls(vec3_dot(vector, normal));
	v.divide(n);
	return v;
}

// projects a vector onto a plane defined by a normal orthogonal to the plane.
function vec3_project_on_plane(vector, plane_normal)
{
	var v = new vec3(vector.x, vector.y, vector.z);
	v.sub(vec3_project(vector, plane_normal));
	return v;
}