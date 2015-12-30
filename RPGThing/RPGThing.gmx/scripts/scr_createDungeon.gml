#define scr_createDungeon
randomize();

dungeonWidth = floor(random_range(5,100));
dungeonHeight = floor(random_range(5,100));

room_width = dungeonWidth * 32;
room_height = dungeonHeight * 32;

scr_createBorder(dungeonWidth,dungeonHeight);

#define scr_createBorder
width = argument[0];
height = argument[1];

for (var i = 0 ;i < width ;i++){
    instance_create(i*32,0,obj_tree);
    instance_create(i*32,(height * 32) - 32,obj_tree);
}

for (var j = 0 ;j < height ;j++){
    instance_create(0,j*32,obj_tree);
    instance_create((width * 32) - 32,j*32,obj_tree);
}
