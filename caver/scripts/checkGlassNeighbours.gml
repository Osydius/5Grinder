var instance_x = 0
var instance_y = 0
var make_breaking = false

instance_x = argument[0]
instance_y = argument[1]


if !place_free(instance_x-32,instance_y)
{
    var object_left = instance_place(instance_x-32,instance_y,obj_glass)
    
    if object_left.breaking > 3
    {
        make_breaking = true
    }
}

if !place_free(instance_x+32,instance_y)
{
    var object_right = instance_place(instance_x+32,instance_y,obj_glass)
    
    if object_right.breaking > 3
    {
        make_breaking = true
    }
}

if !place_free(instance_x,instance_y+32)
{
    var object_below = instance_place(instance_x,instance_y+32,obj_glass)
    
    if object_below.breaking > 3
    {
        make_breaking = true
    }
}

if !place_free(instance_x,instance_y-32)
{
    var object_above = instance_place(instance_x,instance_y-32,obj_glass)
    
    if object_above.breaking > 3
    {
        make_breaking = true
    }
}


return make_breaking