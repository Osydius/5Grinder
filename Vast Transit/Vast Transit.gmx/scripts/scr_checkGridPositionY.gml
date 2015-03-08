yspacing = (room_h - 40 ) / 10

gridpositiony = -1

if argument[0] < 10 + (yspacing * 5) and argument[0] > 10{
    if argument[0] <= yspacing{
        gridpositiony = 0
    }
    else if argument[0] <= yspacing* 2{
        gridpositiony = 1
    }
    else if argument[0] <= yspacing * 3{
        gridpositiony = 2
    }
    else if argument[0] <= yspacing * 4{
        gridpositiony = 3
    }
    else if argument[0] <= yspacing* 5{
        gridpositiony = 4
    }
}
else if argument[0] < room_height - 10 and argument[0] > 40 + (yspacing * 5){
    if argument[0] <= 40 + (yspacing * 5) + yspacing{
        gridpositiony = 5
    }
    else if argument[0] <= 40 + (yspacing * 5) + yspacing* 2{
        gridpositiony = 6
    }
    else if argument[0] <= 40 + (yspacing * 5) + yspacing * 3{
        gridpositiony = 7
    }
    else if argument[0] <= 40 + (yspacing * 5) + yspacing * 4{
        gridpositiony = 8
    }
    else if argument[0] <= 40 + (yspacing * 5) + yspacing* 5{
        gridpositiony = 9
    }
}

return gridpositiony
