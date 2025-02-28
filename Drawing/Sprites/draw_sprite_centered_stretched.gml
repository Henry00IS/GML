/// This function simply takes a sprite resource and stretches it over the
/// given width and height, so that it occupies that area. As with
/// `draw_sprite()` you can specify a sprite and a sub-image for drawing, then
/// the x / y position in the room for the sprite to be drawn at and finally a
/// width and a height (which must be pixel values).
/// 
/// The built-in `draw_sprite_stretched()` function, stretches the sprite along
/// the right and bottom (e.g. with a top-left offset) and ignores the sprite
/// origin. This function stretches evenly in all directions and keeps the
/// sprite centered at the x / y position.
/// @param {Asset.GMSprite} _sprite The sprite to draw.
/// @param {real} _frame The subimg (frame) of the sprite to draw (image_index
/// or -1 correlate to the current frame of animation in the object).
/// @param {real} _x The x coordinate of where to draw the sprite.
/// @param {real} _y The y coordinate of where to draw the sprite.
/// @param {real} _w The width of the area the stretched sprite will occupy.
/// @param {real} _h The height of the area the stretched sprite will occupy.
/// @returns {undefined}
function draw_sprite_centered_stretched(_sprite, _frame, _x, _y, _w, _h) {
    draw_sprite_stretched(_sprite, _frame,
        _x - _w * 0.5,
        _y - _h * 0.5,
        _w,
        _h
    );
}