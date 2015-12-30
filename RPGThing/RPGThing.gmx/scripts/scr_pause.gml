#define scr_pause


#define scr_pauseCreate
var pauser = argument[0];

pauser.pause = false;
pauser.pauseSurf=surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
surface_copy(pauser.pauseSurf,0,0,application_surface);
instance_deactivate_all(true);

#define scr_pauseStep
var pauser = argument[0];

if(keyboard_check_released(vk_space)){
    surface_free(pauser.pauseSurf);
    instance_activate_all();
    instance_destroy();
}

#define scr_pauseDraw
var pauser = argument[0];
if(surface_exists(pauser.pauseSurf)){
    if surface_exists(pauser.pauseSurf){draw_surface(pauser.pauseSurf,view_xview[0],view_yview[0]);}
    draw_text(100,100,"paused");
}