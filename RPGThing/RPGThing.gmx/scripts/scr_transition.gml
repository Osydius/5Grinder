#define scr_transition


#define scr_transitionCreate
var transition = argument[0];

transition.displayRoomError = false;

transition.targetRoom = "";

transition.rotation = 0;

#define scr_transitionStep
var transition = argument[0];

var player = instance_find(obj_player,0);
if(player != noone){
    if(!player.initialised){
        var lastRoom = global.lastRoom;
        if(transition.targetRoom == lastRoom){
            player.x = transition.x;
            player.y = transition.y;
            player.initialised = true;
        }
    }
}


#define scr_transitionDraw
var transition = argument[0];

transition.image_angle = transition.rotation;
draw_self();

/*
if(transition.displayRoomError){
    if(view_enabled){
        var rectX1 = view_xview[0] + (view_wview[0]/4);
        var rectY1 = view_yview[0] + (view_hview[0]/4);
        var rectX2 = view_xview[0] + (view_wview[0]/2);
        var rectY2 = view_yview[0] + (view_hview[0]/2);
    } else {
        var rectX1 = 0 + (room_width/4);
        var rectY1 = 0 + (room_height/4);
        var rectX2 = 0 + (room_width/2);
        var rectY2 = 0 + (room_height/2);
    }
    draw_rectangle(rectX1, rectY1, rectX2, rectY2, true);
}