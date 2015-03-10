room_w = argument[0]
room_h = argument[1]
actionBarWidth = 500
xspacing = (room_w - (20 + actionBarWidth)) / 5
yspacing = (room_h - 40 ) / 10



for (i = 0; i <= 5; i++){
    draw_line(10, 10 + (yspacing * i),room_w - (10 + actionBarWidth), 10 + (yspacing * i))
}

for (i = 0; i <= 5; i++){
    draw_line(10, 30 + (yspacing * (5+i)),room_w - (10 + actionBarWidth), 30 + (yspacing * (5+i)))
}

for (i = 0; i <= 5; i++){
    draw_line(10 + (xspacing * i),10,10 + (xspacing * i), 10 + (yspacing * 5))
}

for (i = 0; i <= 5; i++){
    draw_line(10 + (xspacing * i),30 + (yspacing * (5)),10 + (xspacing * i), room_h - 10)
}
