// represents a 2-dimensional vector.
function vec2(_x, _y)
{
	x = _x;
	y = _y;
	
	// sets this vector to the specified coordinates.
	function set(_x, _y)
	{
		x = _x;
		y = _y;
	}
	
	// returns a copy of this vector.
	function copy()
	{
		return new vec2(x, y);
	}
	
	// adds another vector to this vector.
	function add(v)
	{
		x += v.x;
		y += v.y;
	}
	
	// subtracts another vector from this vector.
	function sub(v)
	{
		x -= v.x;
		y -= v.y;
	}
	
	// multiplies this vector by another vector.
	function mul(v)
	{
		x *= v.x;
		y *= v.y;
	}
	
	// divides this vector by another vector.
	function divide(v)
	{
		x /= v.x;
		y /= v.y;
	}
	
	// returns the length of this vector.
	function magnitude()
	{
		return sqrt(x * x + y * y);
	}
	
	// returns the squared length of this vector.
	function sqr_magnitude()
	{
		return x * x + y * y;
	}
	
	// makes this vector have a magnitude of 1.
	function normalize()
	{
		var m = magnitude();
		if (m > math_get_epsilon())
		{
			x /= m;
			y /= m;
		}
		else
		{
			x = 0;
			y = 0;
		}
	}
	
	// returns a new vector with a magnitude of 1.
	function normalized()
	{
		var v = new vec2(x, y);
		v.normalize();
		return v;
	}
	
	// returns whether this vector equals another vector.
	function equals(v)
	{
		if (x == v.x)
			return (y == v.y);
		return false;
	}
	
	// returns a string representation of this vector.
	function tostring()
	{
		return "(x:" + string(x) + ", y:" + string(y) + ")";
	}
}

// returns a new vector with vector a + b.
function vec2_add(a, b)
{
	return new vec2(a.x + b.x, a.y + b.y);
}

// returns a new vector with vector a - b.
function vec2_sub(a, b)
{
	return new vec2(a.x - b.x, a.y - b.y);
}

// returns a new vector with vector a * b.
function vec2_mul(a, b)
{
	return new vec2(a.x * b.x, a.y * b.y);
}

// returns a new vector with vector a / b.
function vec2_divide(a, b)
{
	return new vec2(a.x / b.x, a.y / b.y);
}

// linearly interpolates between vector a and b by t.
function vec2_lerp(a, b, t)
{
	return new vec2(a.x + (b.x - a.x) * t, a.y + (b.y - a.y) * t);
}

// computes the dot product of two vectors.
function vec2_dot(lhs, rhs)
{
	return lhs.x * rhs.x + lhs.y * rhs.y;
}

// reflects a vector off the vector defined by a normal.
function vec2_reflect(direction, normal)
{
	return -2.0 * vec2_dot(normal, direction) * normal + direction;
}

// returns the angle in degrees between from and to.
function vec2_angle(from, to)
{
	return arccos(clamp(vec2_dot(from.normalized(), to.normalized()), -1.0, 1.0)) * 57.29578;
}

// returns the distance between a and b.
function vec2_distance(a, b)
{
	var v = new vec2(a.x, a.y);
	v.sub(b);
	return v.magnitude();
}

// returns a vector that is made from the smallest components of two vectors.
function vec2_min(a, b)
{
	return new vec2(min(a.x, b.x), min(a.y, b.y));
}

// returns a vector that is made from the largest components of two vectors.
function vec2_max(a, b)
{
	return new vec2(max(a.x, b.x), max(a.y, b.y));
}