var move_direction ;
var has_moved;

move_direction = '';
has_moved = false;

if obj_player.move_timer == 0 {
    
    // Player presses left
    if keyboard_check(ord('A')){
        move_direction = 'left';
    } else if keyboard_check(vk_left){
        move_direction ='left';
    }
    
    // Player presses down
    if keyboard_check(ord('S')){
        move_direction = 'down';
    } else if keyboard_check(vk_down){
        move_direction = 'down';
    }
    
    // Player presses right
    if keyboard_check(ord('D')){
        move_direction = 'right';
    } else if keyboard_check(vk_right){
        move_direction = 'right';
    }
    
    // Player presses up
    if keyboard_check(ord('W')){
        move_direction = 'up';
    } else if keyboard_check(vk_up)
        move_direction = 'up';
    }
    
    if move_direction != '' {
        // Move up
        if move_direction == 'up' {
            obj_player.face_direction = move_direction;
            if place_free(obj_player.x,obj_player.y-global.exploreSpriteHeight){
                obj_player.y -= global.exploreSpriteHeight;
                has_moved = true;
            }
        }
        // Move left
        if move_direction == 'left' {
            obj_player.face_direction = move_direction;
            if place_free(obj_player.x-global.exploreSpriteWidth,obj_player.y){
                obj_player.x -= global.exploreSpriteWidth;
                has_moved = true;
            }
        }
        // Move down
        if move_direction == 'down' {
            obj_player.face_direction = move_direction;
            if place_free(obj_player.x,obj_player.y+global.exploreSpriteHeight){
                obj_player.y += global.exploreSpriteHeight;
                has_moved = true;
            }
        }
        // Move right
        if move_direction == 'right' {
            obj_player.face_direction = move_direction;
            if place_free(obj_player.x+global.exploreSpriteWidth,obj_player.y){
                obj_player.x += global.exploreSpriteWidth;
                has_moved = true;
            }
    }
    
    if has_moved {
        obj_player.move_timer = obj_player.set_move_timer;
    }
}else if obj_player.move_timer > 0{
    obj_player.move_timer -= 1;
}