var rectangle_x1 = argument[0]
var rectangle_y1 = argument[1]
var rectangle_x2 = argument[2]
var rectangle_y2 = argument[3]

var inRectangle = false

if mouse_x > rectangle_x1 && mouse_x < rectangle_x2
{
    if mouse_y > rectangle_y1 && mouse_y < rectangle_y2
    {
        inRectangle = true
    }
} 

return inRectangle
