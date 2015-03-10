var locationX = argument[0];
var locationY = argument[1];

// check adjacent left
if locationX-global.exploreSpriteWidth >= 0 && locationY >= 0{
    if place_empty(locationX-global.exploreSpriteWidth,locationY) {
        if !instance_exists(obj_player){
             instance_create(locationX-global.exploreSpriteWidth, locationY, obj_player);
        }
       
    }
}

// check adjacent up
if locationX >= 0 && locationY-global.exploreSpriteHeight >= 0 {
    if place_empty(locationX,locationY-global.exploreSpriteHeight) {
        if !instance_exists(obj_player){
            instance_create(locationX, locationY-global.exploreSpriteHeight, obj_player);
        }
    }
}

// check adjacent right
if locationX+global.exploreSpriteWidth <= room_width-global.exploreSpriteWidth && locationY >= 0 {
    if place_empty(locationX+global.exploreSpriteWidth,locationY) {
        if !instance_exists(obj_player){
            instance_create(locationX+global.exploreSpriteWidth, locationY, obj_player);   
        }
    }
}

// check adjacent down
if locationX >= 0 && locationY+global.exploreSpriteHeight <= room_height-exploreSpriteHeight {
    if place_empty(locationX,locationY+global.exploreSpriteHeight) {
        if !instance_exists(obj_player){
            instance_create(locationX, locationY+global.exploreSpriteHeight, obj_player);
        }
    }
}

