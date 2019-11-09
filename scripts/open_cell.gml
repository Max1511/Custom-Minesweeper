mine = 0;

if (area[argument0, argument1] == 'c')
{
    if (argument0+1 <= W)
        if (area[argument0+1, argument1] == 'm' or area[argument0+1, argument1] == 'fm')
            mine++;
    if (argument0+1 <= W and argument1+1 <= H)
        if (area[argument0+1, argument1+1] == 'm' or area[argument0+1, argument1+1] == 'fm')
            mine++;
    if (argument0+1 <= W and argument1-1 > 0)
        if (area[argument0+1, argument1-1] == 'm' or area[argument0+1, argument1-1] == 'fm')
            mine++;
    if (argument1+1 <= H)
        if (area[argument0, argument1+1] == 'm' or area[argument0, argument1+1] == 'fm')
            mine++;
    if (argument0-1 > 0)
        if (area[argument0-1, argument1] == 'm' or area[argument0-1, argument1] == 'fm')
            mine++;
    if (argument0-1 > 0 and argument1+1 <= H)
        if (area[argument0-1, argument1+1] == 'm' or area[argument0-1, argument1+1] == 'fm')
            mine++;
    if (argument0-1 > 0 and argument1-1 > 0)
        if (area[argument0-1, argument1-1] == 'm' or area[argument0-1, argument1-1] == 'fm')
            mine++;
    if (argument1-1 > 0)
        if (area[argument0, argument1-1] == 'm' or area[argument0, argument1-1] == 'fm')
            mine++;
    
    if (mine == 0)
    {
        area[argument0, argument1] = '0';
        if (argument0+1 <= W)
            ds_queue_enqueue(cells_queue, argument0+1, argument1);
        if (argument0+1 <= W and argument1+1 <= H)
            ds_queue_enqueue(cells_queue, argument0+1, argument1+1);
        if (argument0+1 <= W and argument1-1 > 0)
            ds_queue_enqueue(cells_queue, argument0+1, argument1-1);
        if (argument1+1 <= H)
            ds_queue_enqueue(cells_queue, argument0, argument1+1);
        if (argument0-1 > 0)
            ds_queue_enqueue(cells_queue, argument0-1, argument1);
        if (argument0-1 > 0 and argument1+1 <= H)
            ds_queue_enqueue(cells_queue, argument0-1, argument1+1);
        if (argument0-1 > 0 and argument1-1 > 0)
            ds_queue_enqueue(cells_queue, argument0-1, argument1-1);
        if (argument1-1 > 0)
            ds_queue_enqueue(cells_queue, argument0, argument1-1);
    }
    if (mine == 1) area[argument0, argument1] = '1';
    if (mine == 2) area[argument0, argument1] = '2';
    if (mine == 3) area[argument0, argument1] = '3';
    if (mine == 4) area[argument0, argument1] = '4';
    if (mine == 5) area[argument0, argument1] = '5';
    if (mine == 6) area[argument0, argument1] = '6';
    if (mine == 7) area[argument0, argument1] = '7';
    if (mine == 8) area[argument0, argument1] = '8';
}

if (area[argument0, argument1] == 'm')
{
    area[argument0, argument1] = 'mine';
    attempts--;
    if (attempts == 0)
    {
        game_over = true;
        for (i=1; i<=W; ++i)
            for (j=1; j<=H; ++j)
            {
                if (area[i, j] = 'm') area[i, j] = 'other';
                if (area[i, j] = 'f') area[i, j] = 'mistake';
            }
    }
}
