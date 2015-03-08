grid = argument[0]

actionBarWidth = 500
xspacing = (room_w - (20 + actionBarWidth)) / 5
yspacing = (room_h - 40 ) / 10


for (i = 0; i <5; i++)
{
    for (j = 0; j <5; j++)
    {
        if grid[i,j] != 0
        {
            draw_sprite(grid[i,j].image_index,-1,10 + (xspacing * i), 10 + (yspacing * j))
        }
    }
}

for (i = 0; i <5; i++)
{
    for (j = 0; j <5; j++)
    {
        if grid[i,5+j] != 0
        {
            draw_sprite(grid[i,5+j].image_index,-1,10 + (xspacing * i), 30 + (yspacing *  (5+j)))
        }
    }
}
