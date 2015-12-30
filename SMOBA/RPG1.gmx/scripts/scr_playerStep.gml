#define scr_playerStep
player = arg[0];

if keyboard_check(vk_left) || keyboard_check(ord('A')){
    if(place_free(player.x - global.gridWidth, player.y)){
        player.x -= global.gridWidth;
    }
}

#define script1
player = arg[0];

if keyboard_check(vk_left) || keyboard_check(ord('A')){
    if(place_free(player.x - global.gridWidth, player.y)){
        player.x -= global.gridWidth;
    }
}
