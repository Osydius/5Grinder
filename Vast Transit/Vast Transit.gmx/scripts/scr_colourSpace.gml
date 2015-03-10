gridx = argument[0]
gridy = argument[1]
canmove = argument[2]

actionBarWidth = 500
xspacing = (room_width - (20 + actionBarWidth)) / 5
yspacing = (room_height - 40 ) / 10

draw_set_alpha(0.5) //HALF TRANSPARENT

if canmove = 1{
draw_set_color(c_green)
}
else
{
draw_set_color(c_red)
}

//draw_rectangle(10 + (xspacing * gridx),30 + (yspacing * gridy),10 * (xspacing * (gridx + 1)),30 + (yspacing * (gridy + 1)),false)
draw_rectangle(10 + (xspacing * gridx),30 + (yspacing * gridy),10 + (xspacing * (gridx+1 )),30 + (yspacing * (gridy+ 1)),false)
draw_set_alpha(1) //RESET
draw_set_color(c_black)


