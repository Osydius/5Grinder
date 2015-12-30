#define scr_buildPause


#define scr_buildPause_create
var pauser = argument[0];

pauser.pause = false;

pauser.menuTotalWidth = 350;
pauser.menuTotalHeight = 700;
pauser.menuBorderSize = 5;
pauser.menuWidth = menuTotalWidth - menuBorderSize;
pauser.menuHeight = menuTotalHeight - menuBorderSize;
pauser.menuDisplayTotal = 5;
pauser.menuCurrentPage = 1;

pauser.totalPages = 1;
var buildingList = global.buildingList;
if(ds_list_size(buildingList) > pauser.menuDisplayTotal){
    totalPages = ds_list_size(buildingList)/pauser.menuDisplayTotal;
}

pauser.pauseSurf = surface_create(
                    surface_get_width(application_surface),
                    surface_get_height(application_surface));
surface_copy(pauser.pauseSurf,0,0,application_surface);
instance_deactivate_all(true);

#define scr_buildPause_step
var pauser = argument[0];

if(keyboard_check_released(vk_space)){
    if(surface_exists(pauser.pauseSurf)){
        surface_free(pauser.pauseSurf);
    }
    instance_activate_all();
    instance_destroy();
}

#define scr_buildPause_draw
var pauser = argument[0];

if(surface_exists(pauser.pauseSurf)){
        draw_surface(pauser.pauseSurf,view_xview[0],view_yview[0]);
}

var x1 = (room_width/2) - (pauser.menuWidth/2);
var y1 = (room_height/2) - (pauser.menuHeight/2);

// draw menu background
draw_rectangle_colour(x1 - pauser.menuBorderSize, y1 - pauser.menuBorderSize,
                        x1 + pauser.menuTotalWidth,
                        y1 + pauser.menuTotalHeight,
                        c_maroon, c_maroon, c_maroon, c_maroon, false);
draw_rectangle_colour(x1, y1, x1 + pauser.menuWidth, y1 + pauser.menuHeight,
                        c_yellow, c_yellow, c_yellow, c_yellow, false);
                        
// draw menu items
var buildingList = global.buildingList;

var currentMenuItems = ds_list_create();
for(i=1;i<pauser.menuDisplayTotal+1;i++){
    var listIndex = (pauser.menuCurrentPage * i) - 1;
    if(ds_list_find_value(buildingList,listIndex) != undefined){
        ds_list_add(currentMenuItems,ds_list_find_value(buildingList,listIndex));
    }
}

var menuItemTotal = ds_list_size(currentMenuItems);
for(i=0;i<menuItemTotal;i++){
    draw_rectangle_colour(x1 + pauser.menuBorderSize,
                            y1 + pauser.menuBorderSize + (100*i) + (5*i) + 100,
                            x1 + pauser.menuWidth - pauser.menuBorderSize,
                            y1 + pauser.menuBorderSize + (100*i) + (5*i) + 200,
                            c_white, c_white, c_white, c_white, false);
    draw_set_colour(c_black);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_text(x1 + pauser.menuBorderSize,
                y1 + pauser.menuBorderSize + (100*i) + (5*i) + 100,
                ds_list_find_value(currentMenuItems,i));
}

// draw menu info
draw_set_colour(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x1 + (pauser.menuWidth/2), y1 + 10, "Building Menu");

// draw page items
var gridWidth = global.gridWidth;
var gridHeight = global.gridHeight;
draw_text(x1 + pauser.menuWidth - pauser.menuBorderSize - (gridWidth*1.5),
             y1 + pauser.menuHeight - pauser.menuBorderSize - (gridHeight/2),
            pauser.menuCurrentPage);

draw_sprite(spr_menuArrow,0,x1 + pauser.menuWidth - pauser.menuBorderSize - gridWidth,
                y1 + pauser.menuHeight - pauser.menuBorderSize - gridHeight);
draw_sprite(spr_menuArrow,1,x1 + pauser.menuWidth - pauser.menuBorderSize - (gridWidth*3),
                y1 + pauser.menuHeight - pauser.menuBorderSize - gridHeight);
