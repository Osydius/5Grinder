var instanceX = argument[0];
var instanceY = argument[1];
var checkObject = argument[2];

var adjacentLocation = "";

if collision_rectangle(instanceX-global.exploreSpriteWidth,instanceY,instanceX,instanceY+global.exploreSpriteHeight,checkObject,false,true){
    adjacentLocation = "left";
} else if collision_rectangle(instanceX,instanceY-global.exploreSpriteHeight,instanceX+global.exploreSpriteWidth,instanceY,checkObject,false,true){
    adjacentLocation = "top";
}else if collision_rectangle(instanceX+global.exploreSriteWidth,instanceY,instanceX+(global.exploreSpriteWidth*2),instanceY+global.exploreSpriteHeight,checkObject,false,true){
    adjacentLocation = "right";
} else if collision_rectangle(instanceX,instanceY+global.exploreSriteHeight,instanceX+global.exploreSpriteWidth,instanceY+(global.exploreSpriteHeight*2),checkObject,false,true){
    adjacentLocation = "bottom";
} 

return adjacentLocation;
