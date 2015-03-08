xposition = argument[0]

actionBarWidth = 500
xspacing = (room_w - (20 + actionBarWidth)) / 5

gridpositionx = -1

if argument[0] < room_width - 500 and argument[0] > 10{
    if argument[0] <= xspacing{
        gridpositionx = 0
    }
    else if argument[0] <= xspacing* 2{
        gridpositionx = 1
    }
    else if argument[0] <= xspacing * 3{
        gridpositionx = 2
    }
    else if argument[0] <= xspacing * 4{
        gridpositionx = 3
    }
    else if argument[0] <= xspacing* 5{
        gridpositionx = 4
    }
}
else
{
    gridpositionx = -1
}

return gridpositionx
