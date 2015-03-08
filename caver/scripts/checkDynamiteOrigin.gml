var blockx = argument[0]
var blocky = argument[1]
//var checkx = argument[2]
//var checky = argument[3]

var dynamiteObject = instance_place(blockx,blocky,obj_dynamite_normal)
var location = ""

if dynamiteObject != noone
{
    if dynamiteObject.x < blockx && dynamiteObject.y == blocky
    {
        location = "left"
    } else if dynamiteObject.x < blockx && dynamiteObject.y < blocky
    {
        location = "topleft"
    } else if dynamiteObject.x == blockx && dynamiteObject.y < blocky
    {
        location = "top"
    } else if dynamiteObject.x > blockx && dynamiteObject.y < blocky
    {
        location = "topright"
    } else if dynamiteObject.x > blockx && dynamiteObject.y == blocky
    {
        location = "right"
    } else if dynamiteObject.x > blockx && dynamiteObject.y > blocky
    {
        location = "bottomright"
    } else if dynamiteObject.x == blockx && dynamiteObject.y > blocky
    {
        location = "bottom"
    } else if dynamiteObject.x < blockx && dynamiteObject.y > blocky
    {
        location = "bottomleft"
    }
}

return location
