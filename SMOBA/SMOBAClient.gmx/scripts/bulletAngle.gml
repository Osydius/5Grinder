var angle = 0;
var point1_x = argument[0];
var point1_y = argument[1];
var point2_x = argument[2];
var point2_y = argument[3];
var adjacent = abs(point1_x - point2_x);
var opposite = abs(point1_y - point2_y);

if (adjacent != 0)
{
    angle = arctan2(opposite,adjacent);
    angle = radtodeg(angle);
}
else
{
    if point1_x > point2_x
    {
        angle = 270;
    }
    else
    {
        angle = 90;
    }
}

if (point1_x <= point2_x) & (point1_y >= point2_y)
{
    angle = 360 - angle;
}
else if (point1_x >= point2_x) & (point1_y <= point2_y)
{
    angle = 180 - angle;
}
else if (point1_x >= point2_x) & (point1_y >= point2_y)
{
    angle = 180 + angle;
}

return angle;