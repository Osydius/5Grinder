grid = argument[0]
selected = argument[1]


    if selected = "shieldsman"
    {
        draw_sprite(spr_shieldsman,-1,mouse_x,mouse_y)
        for (k = 0; k<5; k++)
        {
           scr_colourSpace(k,5,0)
           scr_colourSpace(0,5+k,0)
           scr_colourSpace(4,5+k,0)
        }
        for (i = 6; i< 10; i++)
        {
            for (j = 1; j < 4; j++)
            {
                if grid[j,i] = 0 and grid[j,i-1] = 0 and grid[j + 1,i-1] = 0 and grid[j - 1,i-1] = 0 
                {
                    scr_colourSpace(j,i,1)
                }
                else
                {
                    scr_colourSpace(j,i,0)
                }
            }
        }
    }
    else
        {
        if selected = "ranged"
        {
            draw_sprite(spr_ranged,-1,mouse_x,mouse_y)
            for (i = 5; i< 10; i++)
        {
            for (j = 0; j < 5; j++)
            {
                if grid[j,i] = 0
                {
                    scr_colourSpace(j,i,1)
                }
                else
                {
                    scr_colourSpace(j,i,0)
                }
            }
        }
        }
        else if selected = "techmage"
        {
            draw_sprite(spr_techmage,-1,mouse_x,mouse_y)
            for (i = 5; i< 10; i++)
        {
            for (j = 0; j < 5; j++)
            {
                if grid[j,i] = 0
                {
                    scr_colourSpace(j,i,1)
                }
                else
                {
                    scr_colourSpace(j,i,0)
                }
            }
        }
        }
        else if selected = "melee"
        {
            draw_sprite(spr_melee,-1,mouse_x,mouse_y)
            for (i = 5; i< 10; i++)
        {
            for (j = 0; j < 5; j++)
            {
                if grid[j,i] = 0
                {
                    scr_colourSpace(j,i,1)
                }
                else
                {
                    scr_colourSpace(j,i,0)
                }
            }
        }
        }
        else if selected = "buffer"
        {
            draw_sprite(spr_buffer,-1,mouse_x,mouse_y)
            for (i = 5; i< 10; i++)
        {
            for (j = 0; j < 5; j++)
            {
                if grid[j,i] = 0
                {
                    scr_colourSpace(j,i,1)
                }
                else
                {
                    scr_colourSpace(j,i,0)
                }
            }
        }
        }
        
        
        
    }
    



