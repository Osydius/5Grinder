var instance_x = 0
var instance_y = 0
var instance_electric_cooldown = 0
var make_electric = false

var return_array

instance_x = argument[0]
instance_y = argument[1]
instance_electric_cooldown_timer = argument[2]

if !place_free(instance_x-32,instance_y)
{
    var object_left = instance_place(instance_x-32,instance_y,obj_block_conductive)
    
    if object_left.electric == 1 and object_left.electrictimer < 27
    {
        if instance_electric_cooldown_timer == 0
        {
            make_electric = true
        }
    }
}

if !place_free(instance_x+32,instance_y)
{
    var object_right = instance_place(instance_x+32,instance_y,obj_block_conductive)
    
     if object_right.electric == 1 and object_right.electrictimer < 27
    {
        if instance_electric_cooldown_timer == 0
        {
            make_electric = true
        }
    }
}

if !place_free(instance_x,instance_y-32)
{
    var object_above = instance_place(instance_x,instance_y-32,obj_block_conductive)
    
    if object_above.electric == 1 and object_above.electrictimer < 27
    {
        if instance_electric_cooldown_timer == 0
        {
            make_electric = true
        }
    }
}

if !place_free(instance_x,instance_y+32)
{
    var object_below = instance_place(instance_x,instance_y+32,obj_block_conductive)
    
    if object_below.electric == 1 and object_below.electrictimer < 27
    {
        if instance_electric_cooldown_timer == 0
        {
            make_electric = true
        }
    }
}

return make_electric